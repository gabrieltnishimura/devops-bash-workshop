#!/usr/bin/env bash
set -euo pipefail

output=$(./pipeline.sh)

if [[ "$output" == *"Running Step 1"* && "$output" == *"Finished pipeline"* ]]; then
  echo "✅ PASS: chaining & logging"; echo $output;
else
  echo "❌ FAIL: expected output not found"; echo "$output"; exit 1
fi
