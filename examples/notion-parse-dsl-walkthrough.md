# Notion Parse Dsl Stack Walkthrough

The fixture is intentionally compact, so the review starts with the cases that pull farthest apart.

| Case | Focus | Score | Lane |
| --- | --- | ---: | --- |
| baseline | token drift | 149 | ship |
| stress | grammar width | 151 | ship |
| edge | label quality | 149 | ship |
| recovery | error locality | 172 | ship |
| stale | token drift | 223 | ship |

Start with `stale` and `baseline`. They create the widest contrast in this repository's fixture set, which makes them better review anchors than the middle cases.

If `baseline` becomes less cautious without a clear reason, I would inspect the drag input first.
