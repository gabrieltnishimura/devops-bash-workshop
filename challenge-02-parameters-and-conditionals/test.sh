#!/usr/bin/env bash
set -euo pipefail
if ./pipeline.sh master dev | grep -qi "dev"; then echo "✅ dev PASS"; else echo "❌ dev FAIL"; exit 1; fi
if ./pipeline.sh master prod | grep -qi "production"; then echo "✅ prod PASS"; else echo "❌ prod FAIL"; exit 1; fi
if ./pipeline.sh master stage | grep -qi "Unknown"; then echo "✅ unknown PASS"; else echo "❌ unknown FAIL"; exit 1; fi
