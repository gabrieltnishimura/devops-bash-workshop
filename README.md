# DevOps Bash Workshop

Hands-on challenges to teach core pipeline concepts using Bash.

## Structure
- `challenge-01-invoke-and-echo/`
- `challenge-02-parameters-and-conditionals/`
- `challenge-03-repeatability-and-idempotency/`

Each challenge contains:
- `pipeline.sh` — minimal starter file for participants
- `test.sh` — self-checking tests (acts like a mini CI gate)

## Requirements
- macOS/Linux (or Windows via WSL/Git Bash)
- Bash 4+
- Git
- Standard coreutils (`chmod`, `sleep`, `mkdir`, `touch`, `tar`, etc.)

## Quick Start
```bash
cd challenge-01-invoke-and-echo
bash pipeline.sh
```
