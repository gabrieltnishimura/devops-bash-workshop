#!/usr/bin/env bash
output1=$(./pipeline.sh secret-branch)
rc1=$?
output2=$(./pipeline.sh secret-branch)
rc2=$?
files=$(ls workspace)
if [ $rc1 -eq 0 ] && [ $rc2 -eq 0 ] && [ "$files" == "super.secret.md" ] && [ "$output2" == "super.secret.md" ]; then
  echo "✅ PASS"
else
  echo "❌ FAIL"
fi
