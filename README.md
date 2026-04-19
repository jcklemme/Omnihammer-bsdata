# Omnihammer-bsdata

**BattleScribe/NewRecruit data files for [OmniHammer](https://github.com/jcklemme/Omnihammer)** — a fan-made fork of ProHammer Classic, built on the Warhammer 40,000 3rd–7th edition rule set.

This repository contains the `.gst` (game system) and `.cat` (faction catalog) files that let you build OmniHammer army lists in [**NewRecruit**](https://newrecruit.eu/app).

> ⚠️ **This is not affiliated with Games Workshop.** OmniHammer is a fan-made game system. Warhammer 40,000, BattleScribe, and all related trademarks belong to their respective owners.

---

## Using this data in NewRecruit

NewRecruit is the active successor to BattleScribe and uses the same file format.

1. Install **New Recruit** from the [web app](https://newrecruit.eu/app), [Google Play](https://play.google.com/store/apps/details?id=eu.newrecruit.www.twa), or the App Store.
2. Open NewRecruit and go to **Add or Remove games** → **Add from GitHub**.
3. Paste the URL of this repository: `https://github.com/jcklemme/Omnihammer-bsdata`
4. NewRecruit will load OmniHammer and all available faction catalogs.
5. Create a new roster, pick a **Daemonic Incursion Detachment**, and start building.

> Old BattleScribe: Not recommended. BattleScribe's developer has been absent for years and many modern features don't work. Use NewRecruit.

---

## Current content status

| File | Status | Notes |
|---|---|---|
| `OmniHammer.gst` | 🟡 Phase 1 framework | Profile types, FOC categories, Standard Detachment, 9 starter USRs. Most of the OmniHammer USR library is not yet imported. |
| `Chaos - Daemonic Incursion.cat` | 🟡 Phase 1 template | Daemonic Incursion Detachment defined. Bloodletters is the only fully-populated unit. Other Daemon units to come. |

The goal of Phase 1 is **a working template**, not a complete game. More factions and units will be added over time as the main OmniHammer codexes are finalized.

---

## Contributing data

Editing BSData files by hand is tedious but doable. See [`AUTHORING.md`](AUTHORING.md) for a walkthrough of how to add:
- a new USR to the game system
- a new weapon profile
- a new unit
- a new detachment

If you break the XML, NewRecruit will tell you — nothing is lost, just fix the error and re-sync.

---

## Relationship to the main OmniHammer repo

The authoritative rules text lives at [jcklemme/Omnihammer](https://github.com/jcklemme/Omnihammer). This repo is downstream: the rules get written there first, then data here is updated to match. If you spot a contradiction between the two, trust the main repo's codex and file an issue here.

---

## License & attribution

**Author:** Black Crusade / Omnihammer project
**Upstream:** [github.com/jcklemme/Omnihammer](https://github.com/jcklemme/Omnihammer)

This data is provided as-is for the OmniHammer community. Not for commercial use.
