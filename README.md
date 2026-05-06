# notion-parse-dsl-stack

`notion-parse-dsl-stack` explores parsers in Ruby. The repository keeps the core rule set compact, then surrounds it with examples that show how the decisions move.

## Notion Parse Dsl Stack Notes

The quickest review path is the verifier first, then the fixtures, then the operations note. That order makes it easy to see whether the code, data, and explanation still agree.

## Implementation Notes

The design is intentionally direct: parse or construct a signal, score it, classify it, and verify the expected branch. This makes the repository useful for studying parsers behavior without needing a service or database unless the language project itself is SQL. The Ruby code keeps the module small and leans on Minitest for direct fixture checks.

## Why This Exists

The goal is to capture the core behavior in code and make the surrounding assumptions obvious. A reader should be able to run the verifier, open the fixtures, and understand why each decision was made.

## Feature Notes

- Uses fixture data to keep error labels changes visible in code review.
- Includes extended examples for grammar boundaries, including `surge` and `degraded`.
- Documents golden examples tradeoffs in `docs/operations.md`.
- Runs locally with a single verification command and no external credentials.
- Stores project constants and verification metadata in `metadata/project.json`.

## Example Scenarios

`recovery` is the first example I would inspect because it lands on the `accept` path with a score of 185. The broader file also keeps `degraded` at -76 and `surge` at 212, which gives the model a useful low-to-high spread.

## Code Tour

- `lib`: library code
- `tests`: verification harness
- `fixtures`: compact golden scenarios
- `examples`: expanded scenario set
- `metadata`: project constants and verification metadata
- `docs`: operations and extension notes
- `scripts`: local verification and audit commands

## Local Setup

Clone the repository, enter the directory, and run the verifier. No database server, cloud account, or token is required.

## Try It

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

This runs the language-level build or test path against the compact fixture set.

## Tests

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/audit.ps1
```

The audit command checks repository structure and README constraints before it delegates to the verifier.

## Boundaries

This code is local-first. It makes no claim about deployed usage and avoids credentials, hosted state, and environment-specific setup.

## Roadmap

- Add a loader for `examples/extended_cases.csv` and promote selected cases into the language test suite.
- Add a short report command that prints the score breakdown for a single scenario.
- Add malformed input fixtures so the failure path is as visible as the happy path.
- Add one more parsers fixture that focuses on a malformed or borderline input.
