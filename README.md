# notion-parse-dsl-stack

`notion-parse-dsl-stack` is a Ruby project in parsers. Its focus is to implement a Ruby parsers project for dsl simulation kernel, using seeded input scenarios and deterministic summary checks.

## Problem It Tries To Make Smaller

The project exists to keep a narrow engineering decision visible and testable. For this repo, that decision is how token drift and label quality should influence a review result.

## Notion Parse Dsl Stack Review Notes

Start with `token drift` and `token drift`. Those cases create the widest score spread in this repo, so they are the best quick check when the model changes.

## Working Pieces

- `fixtures/domain_review.csv` adds cases for token drift and grammar width.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/notion-parse-dsl-walkthrough.md` walks through the case spread.
- The Ruby code includes a review path for `token drift` and `token drift`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Design Notes

The repository has two validation layers: the original compact policy fixture and the domain review fixture. They are separate so one can change without hiding failures in the other.

The Ruby addition stays small enough to inspect in one sitting.

## Example Run

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Tests

The same command runs the local verification path. The highest-scoring domain case is `stale` at 223, which lands in `ship`. The most cautious case is `baseline` at 149, which lands in `ship`.

## Known Limits

The fixture set is small enough to audit by hand. The next useful expansion is malformed input coverage, not extra surface area.
