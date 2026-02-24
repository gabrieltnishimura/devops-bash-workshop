#!/usr/bin/env bash
output1=$(./pipeline.sh secret-branch)
rc1=$?
echo "$output1"
output2=$(./pipeline.sh secret-branch)
rc2=$?
echo "$output2"
files=$(ls workspace)
output3=$(./pipeline.sh)
rc3=$?
echo "$output3"
if [ $rc1 -eq 0 ] && [ $rc2 -eq 0 ] && [ "$files" == "super.secret.md" ] && [ "$output2" == "super.secret.md" ]; then
  if [ $rc3 -eq 1 ] && [ "$output3" == "Error: branch name is required" ]; then
    echo "✅ PASS"
    exit 0
  fi
fi

echo "❌ FAIL"
