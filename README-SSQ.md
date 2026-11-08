# tstapler/ghostty (ssq)

Fork of `ghostty-org/ghostty` carrying patches for stapler-squad's own `ghostty-vt.wasm` build.
`ssq/main` is upstream at a chosen commit plus our patches, one topic per commit, each with an
`Upstream-PR:` trailer. Tags are `ssq.N`. stapler-squad pins a commit SHA on this branch
(`scripts/ghostty-wasm-pins.txt`); workflow: `docs/how-to/ghostty-fork-workflow.md` in
github.com/tstapler/stapler-squad.

| Commit | Topic | Zig test | Upstream status |
|---|---|---|---|
| wasm: C API used by ghostty-web 0.4.0 | coder/ghostty-web's wasm API, unchanged | none | none (upstream main has its own C API) |
| terminal: DECSTR (CSI ! p) dispatches soft_reset | DECSTR via `Terminal.softReset` | `Terminal: softReset ...` | upstream main already has softReset |
| terminal: zero page memory on free for wasm builds | no ghost text from recycled pages | none yet | not yet proposed |

Base: `5714ed07a1012573261b7b7e3ed2add9c1504496` (2025-12-01, Zig 0.15.2).
