# Review Journal

The review surface for `lattice-algo-compress-stack` is deliberately narrow: one fixture, one scoring rule, and one local check.

The local checks classify each case as `ship`, `watch`, or `hold`. That gives the project a small review vocabulary that matches its algorithms focus without claiming live deployment or external usage.

## Cases

- `baseline`: `input width`, score 223, lane `ship`
- `stress`: `search depth`, score 216, lane `ship`
- `edge`: `boundary pressure`, score 161, lane `ship`
- `recovery`: `complexity`, score 166, lane `ship`
- `stale`: `input width`, score 150, lane `ship`

## Note

This file is intentionally plain so the fixture remains the source of truth.
