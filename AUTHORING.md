# AUTHORING.md — How to extend the OmniHammer BSData files

This guide walks through the common things you'll do when translating OmniHammer codex content into BSData format. The examples below are real XML you can copy, paste, and adapt.

---

## How these files fit together

There are two kinds of file, and they serve different purposes:

**`OmniHammer.gst`** — the *game system* file. It defines the framework: what a Unit statline looks like, what a Weapon profile looks like, what the Force Organization Chart categories are (HQ, Troops, Elites, etc.), and the full library of Universal Special Rules. **There is only one `.gst`.** Every faction catalog references it by its `gameSystemId`.

**`Chaos - Daemonic Incursion.cat`** — a *catalog* file. This is where faction-specific content lives: detachments, units, weapons, wargear, subfaction rules. Each faction gets its own `.cat`. A catalog references the `.gst` via `gameSystemId` and inherits everything from it.

**Rule of thumb from the BSData community:**
- Shared **Rules** (USRs like `Fleet`, `Daemon`, `Shred`) go in the `.gst`. Every faction uses the same rule text.
- Shared **weapons and wargear** go in the `.cat`. Point costs and profiles differ by faction, and putting them in the `.gst` just causes conflicts.
- **Unit datasheets** always go in the `.cat` of the faction they belong to.

---

## UUID discipline

Every entity — every rule, every profile, every unit, every category — needs a unique ID. In XML, these are UUIDs (e.g., `a1f3b5c2-0000-4000-8000-000000000001`).

**When to use a stable UUID:** The game system ID, category IDs, characteristic type IDs, and anything referenced by another file must stay the same across edits. If you change them, cross-references break.

**When to use a fresh UUID:** Every new entity you add needs a new, never-before-used UUID. Generate one at [uuidgenerator.net](https://www.uuidgenerator.net/) or run `python3 -c "import uuid; print(uuid.uuid4())"`.

**Never reuse a UUID.** Not between units, not between rules, not anywhere.

---

## Adding a new USR to the .gst

USRs live inside `<sharedRules>` in `OmniHammer.gst`. To add a new one, you need a fresh UUID, the rule's name, and its description text.

**Example: adding `Counter-Attack`.**

Find the `<sharedRules>` block and add a new `<rule>` child:

```xml
<rule id="PASTE-FRESH-UUID-HERE" name="Counter-Attack" hidden="false">
  <description>If this unit is not engaged with any enemy models and an enemy unit successfully completes a charge move against it, the unit may take a Leadership test. If passed, this unit gains +1 attack during the Assault phase.</description>
</rule>
```

> **Do not use markdown formatting (bold, italics, asterisks) inside `<description>`.** NewRecruit displays this text as plain text. Keep it clean prose — no `***Fleet***`, just `Fleet`.

Once added, any unit or weapon in any catalog can reference it via an `<infoLink>` pointing to its UUID.

---

## Adding a new weapon to a .cat

Weapon profiles live in `<sharedProfiles>` inside the faction's `.cat`. Each weapon is a `<profile>` using either the `Ranged Weapon` or `Melee Weapon` profile type from the `.gst`.

**Example: adding `Hellflail`, a hypothetical Khornate chain weapon.**

First, decide the profile type. Hellflail is melee, so we use the Melee Weapon profile type ID: `a1f3b5c2-0000-4000-8000-000000000013`.

Inside `<sharedProfiles>`, add:

```xml
<profile id="PASTE-FRESH-UUID-HERE" name="Hellflail" hidden="false" typeId="a1f3b5c2-0000-4000-8000-000000000013" typeName="Melee Weapon">
  <characteristics>
    <characteristic name="Range" typeId="a1f3b5c2-0000-4000-8000-000000000130">Melee</characteristic>
    <characteristic name="S" typeId="a1f3b5c2-0000-4000-8000-000000000131">User</characteristic>
    <characteristic name="AP" typeId="a1f3b5c2-0000-4000-8000-000000000132">4</characteristic>
    <characteristic name="Type" typeId="a1f3b5c2-0000-4000-8000-000000000133">Melee, Shred, Specialist Weapon</characteristic>
  </characteristics>
</profile>
```

The `typeId` values for the characteristics are fixed — they must match the characteristic type IDs defined in the `.gst`. See the **Quick reference: UUIDs you'll reuse** section at the bottom.

For a **ranged weapon**, use profile type `a1f3b5c2-0000-4000-8000-000000000012` instead, and use the ranged weapon characteristic type IDs (`Range`, `S`, `AP`, `Type` — distinct UUIDs from the melee ones).

---

## Adding a new unit to a .cat

This is the most involved pattern. A unit is a `<selectionEntry type="unit">` inside `<sharedSelectionEntries>`, and it typically contains:

1. A **Models group** (`<selectionEntryGroup>`) enforcing the unit composition (min/max total models).
2. One or more **model options** inside that group — the individual rank-and-file model and any upgrade model (sergeant, champion, etc.).
3. An **Options group** for upgrades, wargear swaps, etc.
4. **Category links** assigning the unit to its FOC slot (HQ, Troops, etc.).

The Bloodletters example in `Chaos - Daemonic Incursion.cat` is the canonical reference. Open it and read through the structure; the key pieces are:

- The outer `<selectionEntry name="Bloodletters" type="unit">` is the unit itself.
- Inside is `<selectionEntryGroups>` containing:
  - A `Models` group with `min=8, max=20` constraints (matches "8-20 Bloodletters"), containing the `Bloodletter` model (min=7, max=20) and the `Bloodreaper` model (min=0, max=1 — the sergeant upgrade).
  - An `Options` group with upgrades like `Instrument of Chaos` and `Daemonic Icon`.
- Each model `<selectionEntry type="model">` contains:
  - A `<profile>` with the statline (uses the Unit profile type IDs).
  - `<infoLinks>` to rules like `Daemon of Khorne` and `Daemonic Summoning`.
  - A nested `<selectionEntry type="upgrade">` for the default weapon (the Hellblade).
  - A `<costs>` block with the points cost.
- At the unit level, `<categoryLinks>` assigns Bloodletters to the `Troops` slot (primary=true).

### Writing a new unit — step-by-step

For any new unit, gather these inputs:

- The unit name and its FOC slot.
- The statline (each distinct model gets its own `<profile>`).
- Composition min/max (for the Models group).
- Default wargear (weapons every model has).
- Optional wargear/upgrades (list of choices with costs).
- Special rules the unit has (each gets an `<infoLink>`).
- Base points cost per model.

Then mirror the Bloodletters XML structure, substituting your values. Generate a fresh UUID for every new `id=` attribute you add.

### The sergeant/champion pattern

OmniHammer frequently has a "1 of N models may be upgraded to a Character model" pattern (Bloodreaper, Veteran Sergeant, Nob, etc.). The standard BSData approach wraps both model types in a single `<selectionEntryGroup>` named "Models" with composition constraints on the group, and each model has its own min/max (the sergeant is `min=0, max=1`, the regular guy is `min=(total_min - 1), max=total_max`). The sergeant model additionally gets a `<categoryLink>` to the `Character` category.

### Category linking for multi-detachment units

Some units appear in different FOC slots in different detachments (e.g., Bloodletters are Troops in Daemonic Incursion but Elites in a generic Chaos Space Marines detachment). For now, each catalog assigns the unit to its local slot. The full solution — conditional category links driven by which detachment the unit is in — is a Phase 2 concern.

---

## Adding a new detachment to a .cat

A detachment is a `<forceEntry>` with `<categoryLinks>` specifying the FOC slot min/max. The Daemonic Incursion Detachment in the example `.cat` is a standard FOC (1-2 HQ, 2-6 Troops, etc.) with two info links attached for the faction rules.

To create a new detachment with different slot counts — say, a Khorne-only detachment with 0-3 HQ (all must be Khorne), 1-6 Troops (all must be Khorne Daemons), 0-3 Elites, no Fast Attack, etc. — you adjust the `value` attributes on the `<constraint>` elements inside each `<categoryLink>`.

Restrictions like "all units must have the Mark of Khorne" are more complex and require conditional constraints with filters. Save that pattern for later and start by just adjusting slot counts.

---

## Testing your changes

**Local:** NewRecruit doesn't have an offline editor. The fastest feedback loop is:

1. Commit and push your changes to the repo.
2. In NewRecruit, go to **Add or Remove games** and re-sync your OmniHammer data.
3. Try to build a roster. Any XML errors or broken references will show as warnings in the roster or outright errors in the data list.

**Validation via GitHub Actions (recommended):** The BSData community maintains a [GitHub Action](https://github.com/BSData/bsdata-compile-tests) that compiles and checks `.cat` / `.gst` files on every push. Adding it to this repo will catch broken XML and invalid references *before* NewRecruit tries to load the files. See [`SCAFFOLDING.md`](SCAFFOLDING.md) for setup.

---

## Common pitfalls

- **Editing a shared UUID by accident** breaks every reference to it. If a link suddenly fails to resolve, check whether the target's UUID changed.
- **Markdown in rule descriptions** (asterisks, bold, italics) renders as literal characters. Keep rule text plain.
- **Forgetting `xmlns`** on the root element makes the file invalid. The `.gst` uses `http://www.battlescribe.net/schema/gameSystemSchema`, the `.cat` uses `http://www.battlescribe.net/schema/catalogueSchema`.
- **Forgetting `gameSystemId` on a `.cat`** disconnects it from the game system. The catalog won't load in NewRecruit.
- **Duplicate `name` across siblings** is allowed by BSData but confuses players. Keep names distinct within a scope.

---

## Quick reference: UUIDs you'll reuse

These are defined in `OmniHammer.gst` and are safe to reference from any catalog.

### Profile Type IDs

| Name | UUID |
|---|---|
| Unit | `a1f3b5c2-0000-4000-8000-000000000010` |
| Vehicle | `a1f3b5c2-0000-4000-8000-000000000011` |
| Ranged Weapon | `a1f3b5c2-0000-4000-8000-000000000012` |
| Melee Weapon | `a1f3b5c2-0000-4000-8000-000000000013` |

### Unit profile — characteristic type IDs

| Column | UUID |
|---|---|
| Unit Type | `a1f3b5c2-0000-4000-8000-000000000100` |
| WS | `a1f3b5c2-0000-4000-8000-000000000101` |
| BS | `a1f3b5c2-0000-4000-8000-000000000102` |
| S | `a1f3b5c2-0000-4000-8000-000000000103` |
| T | `a1f3b5c2-0000-4000-8000-000000000104` |
| W | `a1f3b5c2-0000-4000-8000-000000000105` |
| I | `a1f3b5c2-0000-4000-8000-000000000106` |
| A | `a1f3b5c2-0000-4000-8000-000000000107` |
| Ld | `a1f3b5c2-0000-4000-8000-000000000108` |
| Sv | `a1f3b5c2-0000-4000-8000-000000000109` |
| Inv | `a1f3b5c2-0000-4000-8000-00000000010a` |

### Vehicle profile — characteristic type IDs

| Column | UUID |
|---|---|
| Unit Type | `a1f3b5c2-0000-4000-8000-000000000110` |
| WS | `a1f3b5c2-0000-4000-8000-000000000111` |
| BS | `a1f3b5c2-0000-4000-8000-000000000112` |
| S | `a1f3b5c2-0000-4000-8000-000000000113` |
| AVF | `a1f3b5c2-0000-4000-8000-000000000114` |
| AVS | `a1f3b5c2-0000-4000-8000-000000000115` |
| AVR | `a1f3b5c2-0000-4000-8000-000000000116` |
| I | `a1f3b5c2-0000-4000-8000-000000000117` |
| A | `a1f3b5c2-0000-4000-8000-000000000118` |
| SP | `a1f3b5c2-0000-4000-8000-000000000119` |

### Ranged Weapon — characteristic type IDs

| Column | UUID |
|---|---|
| Range | `a1f3b5c2-0000-4000-8000-000000000120` |
| S | `a1f3b5c2-0000-4000-8000-000000000121` |
| AP | `a1f3b5c2-0000-4000-8000-000000000122` |
| Type | `a1f3b5c2-0000-4000-8000-000000000123` |

### Melee Weapon — characteristic type IDs

| Column | UUID |
|---|---|
| Range | `a1f3b5c2-0000-4000-8000-000000000130` |
| S | `a1f3b5c2-0000-4000-8000-000000000131` |
| AP | `a1f3b5c2-0000-4000-8000-000000000132` |
| Type | `a1f3b5c2-0000-4000-8000-000000000133` |

### FOC Category IDs

| Slot | UUID |
|---|---|
| HQ | `a1f3b5c2-0000-4000-8000-000000000020` |
| Troops | `a1f3b5c2-0000-4000-8000-000000000021` |
| Elites | `a1f3b5c2-0000-4000-8000-000000000022` |
| Fast Attack | `a1f3b5c2-0000-4000-8000-000000000023` |
| Heavy Support | `a1f3b5c2-0000-4000-8000-000000000024` |
| Lord of War | `a1f3b5c2-0000-4000-8000-000000000025` |
| Fortifications | `a1f3b5c2-0000-4000-8000-000000000026` |
| Dedicated Transport | `a1f3b5c2-0000-4000-8000-000000000027` |
| Configuration | `a1f3b5c2-0000-4000-8000-000000000028` |
| Character | `a1f3b5c2-0000-4000-8000-000000000029` |

### USR Rule IDs (currently loaded in .gst)

| USR | UUID |
|---|---|
| Daemon | `a1f3b5c2-0000-4000-8000-000000000040` |
| Fear | `a1f3b5c2-0000-4000-8000-000000000041` |
| Furious Charge | `a1f3b5c2-0000-4000-8000-000000000042` |
| Rage | `a1f3b5c2-0000-4000-8000-000000000043` |
| Fleet | `a1f3b5c2-0000-4000-8000-000000000044` |
| Adamantium Will | `a1f3b5c2-0000-4000-8000-000000000045` |
| Daemonic Summoning | `a1f3b5c2-0000-4000-8000-000000000046` |
| Shred | `a1f3b5c2-0000-4000-8000-000000000047` |
| Fearless | `a1f3b5c2-0000-4000-8000-000000000048` |

### Cost Type ID

| Name | UUID |
|---|---|
| points | `a1f3b5c2-0000-4000-8000-000000000003` |

---

## Things I deliberately punted on

These are known Phase 1 limitations. They can be fixed later without redesigning anything:

- **Bloodreaper upgrade cost** is set to 27 pts flat (same as Bloodletter base). The OmniHammer datasheet says the upgrade costs "X pts" (placeholder). Replace when you cost it.
- **Instrument of Chaos** and **Daemonic Icon** upgrades cost 0 pts. Same reason — datasheet placeholder.
- **Bloodletters as Elites in non-Daemon detachments** is not modeled. This catalog treats them as Troops only. When a separate Chaos Space Marines catalog exists, Bloodletters can be re-linked there as Elites — or a conditional modifier can be added here.
- **The Warp Bleeds Through** is a placeholder rule. The v0.2 Daemonic Incursion proposal in the main repo designs it; when finalized, replace the placeholder text.
- **Only 9 USRs are in the library.** Core Rules defines many more. Add them with the "Adding a new USR to the .gst" pattern above as other factions need them.
- **No Publication → Page cross-references.** BSData supports linking rules to specific pages in a rulebook PDF. This is low-value for a fan project; skip it unless you really want it.
