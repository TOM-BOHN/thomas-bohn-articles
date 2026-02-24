#!/bin/bash

# Comprehensive Cursor Rule Validation Script
# Validates all RULE.md files under .cursor/rules/ against Cursor Rule Writing Reviewer standards
# Usage: ./validate_all_rules.sh [output_file]
# If output_file is not provided, writes to COMPREHENSIVE_RULE_AUDIT.md in .cursor/rules/

set -euo pipefail

# Script is in .cursor/resources/cursor-rule-writing/scripts/ (4 levels below repo root)
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(cd "$SCRIPT_DIR/../../../.." && pwd)"
RULES_DIR="$PROJECT_ROOT/.cursor/rules"

# Output file (default or user-specified)
if [ $# -ge 1 ]; then
    REPORT_FILE="$1"
else
    REPORT_FILE="$RULES_DIR/COMPREHENSIVE_RULE_AUDIT.md"
fi

# Ensure rules directory exists
if [ ! -d "$RULES_DIR" ]; then
    echo "Error: Rules directory not found: $RULES_DIR" >&2
    exit 1
fi

# Initialize report
{
    echo "# Comprehensive Cursor Rule Audit Report"
    echo ""
    echo "**Date:** $(date +%Y-%m-%d)"
    echo "**Orchestrator:** Cursor Rule Writing Manager"
    echo "**Reviewer:** Cursor Rule Writing Reviewer"
    echo "**Validation Script:** \`.cursor/resources/cursor-rule-writing/scripts/validate_all_rules.sh\`"
    echo ""
    echo "───────────────────────────────────────────────────────────────────────────────"
    echo ""
} > "$REPORT_FILE"

# Counters
TOTAL_RULES=0
PASSED_RULES=0
WARNING_RULES=0
BLOCKER_RULES=0

# Process each RULE.md file recursively under .cursor/rules
while IFS= read -r -d '' file; do
    # Relative path from RULES_DIR for display
    rel_path="${file#$RULES_DIR/}"
    
    # Skip report and script if they appear
    if [[ "$rel_path" == "COMPREHENSIVE_RULE_AUDIT.md" ]] || [[ "$rel_path" == *"validate_all_rules"* ]]; then
        continue
    fi
    
    TOTAL_RULES=$((TOTAL_RULES + 1))
    
    echo "## Rule: \`$rel_path\`" >> "$REPORT_FILE"
    echo "" >> "$REPORT_FILE"
    
    # Track issues for this rule
    RULE_BLOCKERS=0
    RULE_WARNINGS=0
    
    # Check frontmatter
    if grep -q "^---" "$file"; then
        echo "✅ Frontmatter present" >> "$REPORT_FILE"
        
        # Required fields (blockers)
        if grep -q "^description:" "$file"; then
            echo "✅ description field present" >> "$REPORT_FILE"
        else
            echo "🔴 Missing description field" >> "$REPORT_FILE"
            RULE_BLOCKERS=$((RULE_BLOCKERS + 1))
        fi
        
        if grep -q "^alwaysApply:" "$file"; then
            echo "✅ alwaysApply field present" >> "$REPORT_FILE"
        else
            echo "🔴 Missing alwaysApply field" >> "$REPORT_FILE"
            RULE_BLOCKERS=$((RULE_BLOCKERS + 1))
        fi
        
        # Optional fields (warnings only)
        if grep -q "^category:" "$file"; then
            echo "✅ category field present" >> "$REPORT_FILE"
        else
            echo "🟡 Missing category field (recommended)" >> "$REPORT_FILE"
            RULE_WARNINGS=$((RULE_WARNINGS + 1))
        fi
        
        if grep -q "^phase:" "$file"; then
            echo "✅ phase field present" >> "$REPORT_FILE"
        else
            echo "🟡 Missing phase field (recommended)" >> "$REPORT_FILE"
            RULE_WARNINGS=$((RULE_WARNINGS + 1))
        fi
        
        if grep -q "^tags:" "$file"; then
            echo "✅ tags field present" >> "$REPORT_FILE"
        else
            echo "🟡 Missing tags field (recommended)" >> "$REPORT_FILE"
            RULE_WARNINGS=$((RULE_WARNINGS + 1))
        fi
        
        if grep -q "^version:" "$file"; then
            echo "✅ version field present" >> "$REPORT_FILE"
        else
            echo "🟡 Missing version field (recommended)" >> "$REPORT_FILE"
            RULE_WARNINGS=$((RULE_WARNINGS + 1))
        fi
        
        if grep -q "^lastUpdated:" "$file"; then
            echo "✅ lastUpdated field present" >> "$REPORT_FILE"
        else
            echo "🟡 Missing lastUpdated field (recommended)" >> "$REPORT_FILE"
            RULE_WARNINGS=$((RULE_WARNINGS + 1))
        fi
    else
        echo "🔴 Missing frontmatter" >> "$REPORT_FILE"
        RULE_BLOCKERS=$((RULE_BLOCKERS + 1))
    fi
    
    # Check title
    if grep -q "^# " "$file"; then
        echo "✅ Title present" >> "$REPORT_FILE"
    else
        echo "🔴 Missing title" >> "$REPORT_FILE"
        RULE_BLOCKERS=$((RULE_BLOCKERS + 1))
    fi
    
    # Check Role section (Role & Purpose, Role & Compliance, or Role)
    if grep -q "^## Role" "$file"; then
        echo "✅ Role section present" >> "$REPORT_FILE"
    else
        echo "🔴 Missing Role section" >> "$REPORT_FILE"
        RULE_BLOCKERS=$((RULE_BLOCKERS + 1))
    fi
    
    # Check Context section
    if grep -q "^## Context" "$file"; then
        echo "✅ Context section present" >> "$REPORT_FILE"
    else
        echo "🟡 Missing Context section (recommended)" >> "$REPORT_FILE"
        RULE_WARNINGS=$((RULE_WARNINGS + 1))
    fi
    
    # Check Rules Summary
    if grep -q "^## Rules Summary\|^## Summary" "$file"; then
        echo "✅ Rules Summary section present" >> "$REPORT_FILE"
    else
        echo "🟡 Missing Rules Summary section (recommended)" >> "$REPORT_FILE"
        RULE_WARNINGS=$((RULE_WARNINGS + 1))
    fi
    
    # Determine verdict
    if [ $RULE_BLOCKERS -eq 0 ] && [ $RULE_WARNINGS -le 3 ]; then
        echo "**Verdict:** ✅ PASSED" >> "$REPORT_FILE"
        PASSED_RULES=$((PASSED_RULES + 1))
    elif [ $RULE_BLOCKERS -eq 0 ]; then
        echo "**Verdict:** 🟡 WARNINGS ($RULE_WARNINGS warnings)" >> "$REPORT_FILE"
        WARNING_RULES=$((WARNING_RULES + 1))
    else
        echo "**Verdict:** 🔴 BLOCKERS ($RULE_BLOCKERS blockers, $RULE_WARNINGS warnings)" >> "$REPORT_FILE"
        BLOCKER_RULES=$((BLOCKER_RULES + 1))
    fi
    
    echo "" >> "$REPORT_FILE"
    
done < <(find "$RULES_DIR" -name "RULE.md" -type f -print0 | sort -z)

# Add summary
{
    echo "───────────────────────────────────────────────────────────────────────────────"
    echo ""
    echo "## Summary"
    echo ""
    echo "**Total Rules Reviewed:** $TOTAL_RULES"
    echo "**✅ PASSED:** $PASSED_RULES"
    echo "**🟡 WARNINGS:** $WARNING_RULES"
    echo "**🔴 BLOCKERS:** $BLOCKER_RULES"
    echo ""
    echo "Validation complete. Review findings above."
    echo ""
    echo "**Next Steps:**"
    if [ $BLOCKER_RULES -gt 0 ]; then
        echo "- Fix 🔴 BLOCKERS before rules can be used"
    fi
    if [ $WARNING_RULES -gt 0 ]; then
        echo "- Consider fixing 🟡 WARNINGS for improved consistency"
    fi
    if [ $BLOCKER_RULES -eq 0 ] && [ $WARNING_RULES -eq 0 ]; then
        echo "- All rules pass validation! ✅"
    fi
} >> "$REPORT_FILE"

echo "Validation complete. Report written to: $REPORT_FILE"
echo "Summary: $PASSED_RULES passed, $WARNING_RULES warnings, $BLOCKER_RULES blockers"
