#!/usr/bin/env bash
# Demonstrate failure on re-run
( set +e; ./pipeline.sh >/dev/null 2>&1; rc1=$?; sleep 1 ./pipeline.sh >/dev/null 2>&1; rc2=$?; [ $rc1 -eq 0 ] && [ $rc2 -ne 0 ] ) && echo "✅ PASS" || { echo "❌ FAIL"; exit 1; }
