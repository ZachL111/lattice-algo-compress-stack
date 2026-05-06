# lattice-algo-compress-stack

`lattice-algo-compress-stack` explores algorithms with a small OCaml codebase and local fixtures. The technical goal is to package an OCaml local lab for compress analysis with round-trip fixtures, lossless normalization checks, and documented operating limits.

## Use Case

The point is to make a small domain rule concrete enough that a reader can change it and immediately see what broke.

## Lattice Algo Compress Stack Review Notes

For a quick review, compare `input width` with `input width` before reading the middle cases.

## Highlights

- `fixtures/domain_review.csv` adds cases for input width and search depth.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/lattice-algo-compress-walkthrough.md` walks through the case spread.
- The OCaml code includes a review path for `input width` and `input width`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Code Layout

The repository has two validation layers: the original compact policy fixture and the domain review fixture. They are separate so one can change without hiding failures in the other.

The added OCaml path is deliberately direct, with fixtures doing most of the explaining.

## Run The Check

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Regression Path

The verifier is intentionally local. It should fail if the fixture score math, lane assignment, or language-specific test drifts.

## Future Work

No external service is required. A deeper version would add more negative cases and a clearer boundary around invalid input.
