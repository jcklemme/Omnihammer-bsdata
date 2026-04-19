# SCAFFOLDING.md — Recommendations for repo setup

This document collects recommendations for things beyond the core `.gst` / `.cat` files — repo configuration, validation tooling, and organizational choices. None of this is strictly required to use the data, but each item either catches errors earlier or makes contributions smoother.

---

## Recommended: BSData validation GitHub Action

The BSData community maintains a GitHub Action that compiles and tests `.cat` / `.gst` files on every push. It catches:

- XML syntax errors
- Broken cross-references (e.g., a unit pointing at a rule UUID that no longer exists)
- Schema violations

**Why it matters for you:** Without it, you only find out you broke the data when NewRecruit fails to load it — which might be hours or days after the commit. With it, GitHub marks the commit red within a minute and tells you exactly what went wrong.

**How to add it:** Create `.github/workflows/validate.yml` with:

```yaml
name: Validate datafiles

on:
  push:
  pull_request:

jobs:
  validate:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - uses: BSData/bsdata-compile-tests@main
```

Push that, and every future commit gets validated automatically. If the action is out of date by the time you try this (the BSData community ecosystem changes slowly but not never), check [github.com/BSData](https://github.com/BSData) for the current validation tool.

**I did not create this file** because the specific action reference may drift. Grab the current recommended workflow from [BSData/catalogue-development wiki](https://github.com/BSData/catalogue-development/wiki) when you set this up.

---

## Recommended: LICENSE file

A clear license does two things: tells users what they can do with the files, and signals that this is a community project, not a GW product.

The BSData community typically uses a **MIT** or **Creative Commons BY-NC-SA** license for their catalogs. Given the fan-project / non-commercial nature of OmniHammer, **CC BY-NC-SA 4.0** is the closest fit:

- **BY:** attribution required
- **NC:** no commercial use
- **SA:** derivative works must share alike

To add it:

1. Go to [creativecommons.org/licenses/by-nc-sa/4.0/](https://creativecommons.org/licenses/by-nc-sa/4.0/) and copy the license text into a file named `LICENSE` at the repo root.
2. Reference it from `README.md` (already cross-linked).

If you'd rather go pure MIT or Apache, those are fine too — anything is better than no license. Without one, legally nobody can use your files, even within the community.

---

## Optional: a NOTICE / DISCLAIMER file

A separate `NOTICE` file (or a prominent section in `README.md`, which you already have) disclaiming Games Workshop affiliation is boilerplate for fan projects. The current `README.md` includes this already; no separate file needed unless a lawyer recommends one.

---

## Optional: Submitting to the BSData Gallery

The [BSData Gallery](https://github.com/BSData/gallery) is a registry of community catalog repositories. Submitting this repo means NewRecruit users can find it via its built-in browse UI rather than having to paste the GitHub URL.

**Pros:** Discoverability. Legitimizes the project for newcomers.

**Cons:** Review process (it's open but has minimum quality standards). Adds a governance dependency you don't currently have.

**Recommendation:** Don't submit yet. Wait until you have at least 2–3 factions substantially populated and until the OmniHammer rules have stabilized. Your Telegram group can use the repo URL directly in the meantime.

---

## Optional: Release tagging

Once the data is usable, git-tagged releases let NewRecruit users pin to a known-good version. The tagging convention BSData uses is `vMAJOR.MINOR.PATCH` (e.g., `v0.1.0`).

For a small, single-author project, this is overkill at Phase 1. Worth revisiting once multiple people are playing and someone asks "can I roll back to the version we were using at last week's game?"

---

## Repository structure

Current layout (recommended):

```
Omnihammer-bsdata/
├── OmniHammer.gst                       (game system — root framework)
├── Chaos - Daemonic Incursion.cat       (one catalog per detachment/faction)
├── README.md                            (landing page)
├── AUTHORING.md                         (how to extend)
├── SCAFFOLDING.md                       (this file)
├── LICENSE                              (to be added)
└── .github/
    └── workflows/
        └── validate.yml                 (to be added)
```

**Do not** put the `.gst` / `.cat` files in a subdirectory. NewRecruit's "Add from GitHub" feature expects them at the repo root.

**Naming:** `.cat` filenames can contain spaces — NewRecruit handles them fine. The convention is `<Faction> - <Detachment>.cat` or `Codex <Faction>.cat`. Pick one and be consistent.

---

## When to split a `.cat` file

Rule of thumb: one `.cat` per buildable detachment faction. For Chaos, that means separate `.cat` files for:

- `Chaos - Chaos Space Marines.cat`
- `Chaos - Daemonic Incursion.cat`  (current)
- `Chaos - The Lost and the Damned.cat`
- `Chaos - Dark Mechanicum.cat`
- `Chaos - Traitoris Lance.cat`

Each is self-contained and references only the `.gst`. Shared rules that apply across all Chaos detachments (e.g., Marks of Chaos) can either be duplicated per-catalog or extracted into a common `Chaos - Common.cat` acting as a shared library. The BSData term for a catalog that only provides shared material is a **library catalog** (`library="true"` on the root element).

Start duplicating; only extract to a library catalog when the duplication becomes painful. Premature extraction is a common BSData pitfall.
