# AUTHORING.md — How to extend the OmniHammer BSData files

This guide walks through hand-editing the `.gst` and `.cat` files to add content. The format is BattleScribe 2.00 XML, which is what NewRecruit consumes.

**Golden rule:** when in doubt, open the real 7e reference (`BSData/wh40k-7th-edition/Warhammer40K.gst` on GitHub) and copy the structural pattern. If something works there, it'll work here. If it doesn't look like anything in the real 7e files, it probably won't load.

---

## How these files fit together

**`OmniHammer.gst`** — the game system. One file, referenced by every catalog via `gameSystemId`. Defines the statline framework (Unit, Vehicle, Ranged Weapon, Melee Weapon, Wargear profile types), the points cost type, the Standard Detachment with its FOC slots, and the shared USR library.

**`Chaos - Daemonic Incursion.cat`** — a faction catalog. One per detachment. References the `.gst` by UUID. Contains the Daemonic Incursion Detachment force entry (with its own FOC slot categories), Daemonic Incursion-specific shared rules, shared weapon/wargear profiles, and all unit datasheets.

**Rule of thumb from the BSData community:**
- Shared USRs (`Fleet`, `Daemon`, `Shred`) live in the `.gst`. All factions use the same text.
- Faction-specific rules (`Daemon of Khorne`) live in the `.cat`.
- Weapon/wargear profiles live in the `.cat`'s `<sharedProfiles>` block. Point costs differ by faction, so these aren't shared at the `.gst` level.
- Unit datasheets always live in the faction's `.cat`.

---

## The five things that must be exactly right

These are the schema gotchas that waste the most time. Get these right and the rest is structural.

1. **Attribute names are specific.** Characteristics on a profile use `characteristicTypeId="..." value="..."` — NOT `characteristicId`, NOT element text content. Profiles use `profileTypeId`. Costs use `costTypeId`. Getting any of these wrong silently breaks loading.

2. **Every element needs boilerplate empty children.** A rule, category, profile, selection entry, force entry — every container must include `<profiles/>`, `<rules/>`, `<infoLinks/>`, `<modifiers/>` (and for selection entries, `<constraints/>`, `<selectionEntries/>`, `<selectionEntryGroups/>`, `<entryLinks/>`). Leave them empty if unused, but they must be present. This is the 7e schema's biggest quirk.

3. **Categories live inside force entries.** Not at the `.gst` or `.cat` root. Each detachment defines its FOC slots as `<categoryEntry>` elements inside its `<forceEntry>`. The slot counts (min/max) live on `<constraint>` elements inside each category entry.

4. **Version must be 2.00.** `battleScribeVersion="2.00"` on both files. Not 2.02, not 2.03. XML declaration must have `standalone="yes"`.

5. **Cost types use simple string IDs.** `id="points"` in the `.gst`, and `costTypeId="points"` on every `<cost>` element in the `.cat`. Not UUIDs.

---

## UUID discipline

Every entity — every rule, profile, selection entry, category — needs a unique `id` attribute. For new entities, generate a fresh UUID:

```bash
python3 -c "import uuid; print(uuid.uuid4())"
```

**Stable UUIDs** (the ones defined in the `.gst` and referenced from catalogs) must never change. If you edit the `.gst` and accidentally change a profile type ID, every unit referencing it breaks.

**Fresh UUIDs** go on every new thing you add — new rules, new units, new selection entries. Never reuse one.

---

## Adding a new USR to the .gst

Rules live in `<sharedRules>` at the bottom of the `.gst`. Copy the pattern:

```xml
<rule id="FRESH-UUID-HERE" name="Counter-Attack" hidden="false">
  <profiles/>
  <rules/>
  <infoLinks/>
  <modifiers/>
  <description>If this unit is not engaged with any enemy models and an enemy unit successfully completes a charge move against it, the unit may take a Leadership test. If passed, this unit gains +1 attack during the Assault phase.</description>
</rule>
```

**Keep `<description>` plain text.** No markdown formatting (no `**bold**`, no `***italic***`, no `*`). NewRecruit renders it literally. Use em-dashes and line breaks naturally; avoid asterisks.

Once added, any unit or weapon in any catalog can reference it via an `<infoLink type="rule" targetId="FRESH-UUID-HERE">`.

---

## Adding a new weapon to a .cat

Weapon **profiles** are definitions (the statline). Weapon **equipment entries** are what gets selected on a unit. You need both.

### Step 1 — Add the weapon profile to `<sharedProfiles>`

```xml
<profile id="FRESH-UUID" name="Hellflail" hidden="false" profileTypeId="a1f3b5c2-0000-4000-8000-000000000013">
  <profiles/>
  <rules/>
  <infoLinks/>
  <modifiers/>
  <characteristics>
    <characteristic name="Range" characteristicTypeId="a1f3b5c2-0000-4000-8000-000000000130" value="-"/>
    <characteristic name="Strength" characteristicTypeId="a1f3b5c2-0000-4000-8000-000000000131" value="User"/>
    <characteristic name="AP" characteristicTypeId="a1f3b5c2-0000-4000-8000-000000000132" value="4"/>
    <characteristic name="Type" characteristicTypeId="a1f3b5c2-0000-4000-8000-000000000133" value="Melee, Shred, Specialist Weapon"/>
  </characteristics>
</profile>
```

The `profileTypeId` points at Melee Weapon in the gst. Swap to Ranged Weapon (`...000000000012`) and use the ranged characteristic type IDs (`120`–`123`) for a ranged weapon.

**Put USRs in the `Type` column as text.** `"Melee, Shred, Specialist Weapon"` is the 7e convention. This is how the USRs appear next to the weapon's stats in the roster.

### Step 2 — Add an equipment `<selectionEntry>` on the unit

Inside the unit's `<selectionEntries>`:

```xml
<selectionEntry id="FRESH-UUID" name="Hellflail" hidden="false" collective="false" categoryEntryId="(No Category)" type="upgrade">
  <profiles/>
  <rules/>
  <infoLinks>
    <!-- Link to the profile so the statline appears in rosters -->
    <infoLink id="FRESH-UUID" name="Hellflail" hidden="false" targetId="PROFILE-UUID-FROM-STEP-1" type="profile">
      <profiles/><rules/><infoLinks/><modifiers/>
    </infoLink>
    <!-- Link each USR so its full rule text appears alongside the weapon -->
    <infoLink id="FRESH-UUID" name="Shred" hidden="false" targetId="a1f3b5c2-0000-4000-8000-000000000047" type="rule">
      <profiles/><rules/><infoLinks/><modifiers/>
    </infoLink>
  </infoLinks>
  <modifiers/>
  <constraints>
    <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="false" includeChildSelections="false" includeChildForces="false" id="maxSelections" type="max"/>
  </constraints>
  <selectionEntries/>
  <selectionEntryGroups/>
  <entryLinks/>
  <costs>
    <cost name="pts" costTypeId="points" value="5.0"/>
  </costs>
</selectionEntry>
```

**This is the critical bit for the "7e experience."** The `infoLink type="rule"` pointing at the USR rule makes the full rule description appear in the roster alongside the weapon. The text in the weapon's `Type` column tells players *which* USRs apply; the rule infoLinks make the full rule text actually visible.

For every USR your weapon has, add another `<infoLink type="rule">` targeting that USR's ID.

---

## Adding a new unit to a .cat

The Bloodletters unit is the canonical example. It's structured as one top-level `<selectionEntry type="unit">` containing:

- `<profiles>` — the unit's statline as a `<profile>` with `profileTypeId` pointing at Unit.
- `<infoLinks>` — `type="rule"` links for every USR the unit has, so each rule's full text appears on the datasheet.
- `<selectionEntries>` — child SEs for:
  - The model count (type="model", min/max total models, points per model as cost).
  - Any sergeant/character upgrade (type="upgrade", max=1, contains its own profile with the sergeant's statline).
  - The default weapon (type="upgrade", min=1 max=1, linked to weapon profile + USR rules).
  - Optional wargear (type="upgrade", max=1 each).

The outer `<selectionEntry>` gets `categoryEntryId="UUID-OF-THE-SLOT"` (e.g., the Troops category ID) — that's how it gets assigned to a FOC slot. Children inside the unit use `categoryEntryId="(No Category)"` as a literal string.

For a new unit, the quickest path is: copy the Bloodletters block, rename everything, change the statline values and points cost, generate fresh UUIDs for every `id=""` attribute, and adjust the infoLinks to reference the USRs this unit has.

### The sergeant/champion pattern

For a unit with a "1 of N may be upgraded to X" option:
- The base model is one child SE (min=8, max=20, cost=10 — the base points cost).
- The sergeant upgrade is another child SE (type="upgrade", max=1, contains its own `<profile>` inside `<profiles>` with the sergeant's statline, cost=the *difference* in points between base model and sergeant).
- Add the upgrade's own USRs as infoLinks on the upgrade SE if it has any the base model doesn't.

NewRecruit renders the sergeant's profile inline in the roster when the upgrade is selected.

---

## Adding a new detachment to a .cat

A detachment is a `<forceEntry>` with its own `<categoryEntries>` block defining FOC slots:

```xml
<forceEntry id="FRESH-UUID" name="World Eaters Murder Horde" hidden="false">
  <profiles/>
  <rules>
    <!-- detachment-level special rules go here -->
  </rules>
  <infoLinks/>
  <modifiers/>
  <constraints/>
  <categoryEntries>
    <categoryEntry id="FRESH-UUID" name="HQ" hidden="false">
      <profiles/><rules/><infoLinks/><modifiers/>
      <constraints>
        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="false" includeChildSelections="false" includeChildForces="false" id="minSelections" type="min"/>
        <constraint field="selections" scope="parent" value="2.0" percentValue="false" shared="false" includeChildSelections="false" includeChildForces="true" id="maxSelections" type="max"/>
      </constraints>
    </categoryEntry>
    <!-- more categories here -->
  </categoryEntries>
  <forceEntries/>
</forceEntry>
```

**Important:** each detachment has its *own* category entry UUIDs. A unit's `categoryEntryId` must match the UUID of a category in the detachment it's being used in. If you want the same unit to be "Troops" in Daemonic Incursion but "Elites" in a different detachment, the simplest approach is to define the unit in both catalogs with the appropriate `categoryEntryId` in each. (A cleverer approach using entryLinks and modifiers exists but isn't worth the complexity yet.)

---

## Testing your changes

There's no offline validator for BSData specifically. The feedback loop is:

1. Commit and push to the repo.
2. In NewRecruit: **Add or Remove games** → find OmniHammer → tap **Update All**.
3. Try to build a roster. Any schema violations produce either "Army Book could not be loaded" (fatal) or warnings inside the roster (non-fatal).

If you want faster iteration, **validate XML well-formedness locally first** with Python:

```bash
python3 -c "import xml.etree.ElementTree as ET; ET.parse('path/to/file.cat')"
```

That catches syntax errors. It won't catch broken cross-references or schema violations.

---

## Common pitfalls

- **`characteristicId` vs `characteristicTypeId`** — the latter is correct. This one trips up everyone including prior versions of this file.
- **Missing empty children** — `<profiles/>`, `<rules/>`, `<infoLinks/>`, `<modifiers/>` must be present on every container. "Empty" means the self-closing tag, not omission of the tag.
- **Markdown in descriptions** — NewRecruit shows `***` as literal asterisks. Keep rule text plain.
- **Category UUID mismatches** — a `categoryEntryId` on a unit must match a category UUID defined in a `<forceEntry>`. If they don't match, the unit won't appear in any slot.
- **Changing a stable UUID** — breaks every reference. If something suddenly stops resolving, check whether the target's ID changed.
- **Reusing UUIDs** — two entities with the same `id` causes undefined behavior. Always generate fresh UUIDs.

---

## Quick reference: stable UUIDs

Defined in `OmniHammer.gst`, safe to reference from any catalog.

### Profile Type IDs

| Name | UUID |
|---|---|
| Unit | `a1f3b5c2-0000-4000-8000-000000000010` |
| Vehicle | `a1f3b5c2-0000-4000-8000-000000000011` |
| Ranged Weapon | `a1f3b5c2-0000-4000-8000-000000000012` |
| Melee Weapon | `a1f3b5c2-0000-4000-8000-000000000013` |
| Wargear Item | `a1f3b5c2-0000-4000-8000-000000000014` |

### Unit — characteristic type IDs

All prefixed `a1f3b5c2-0000-4000-8000-`.

| Column | UUID suffix |
|---|---|
| Unit Type | `000000000100` |
| WS | `000000000101` |
| BS | `000000000102` |
| S | `000000000103` |
| T | `000000000104` |
| W | `000000000105` |
| I | `000000000106` |
| A | `000000000107` |
| Ld | `000000000108` |
| Sv | `000000000109` |
| Inv | `00000000010a` |

### Vehicle — characteristic type IDs

| Column | UUID suffix |
|---|---|
| Unit Type | `000000000110` |
| WS | `000000000111` |
| BS | `000000000112` |
| S | `000000000113` |
| AVF | `000000000114` |
| AVS | `000000000115` |
| AVR | `000000000116` |
| I | `000000000117` |
| A | `000000000118` |
| SP | `000000000119` |

### Ranged Weapon — characteristic type IDs

| Column | UUID suffix |
|---|---|
| Range | `000000000120` |
| Strength | `000000000121` |
| AP | `000000000122` |
| Type | `000000000123` |

*(Note: 7e uses `Strength`, not `S`, for the weapon profile column.)*

### Melee Weapon — characteristic type IDs

| Column | UUID suffix |
|---|---|
| Range | `000000000130` |
| Strength | `000000000131` |
| AP | `000000000132` |
| Type | `000000000133` |

### Wargear Item — characteristic type IDs

| Column | UUID suffix |
|---|---|
| Description | `000000000140` |

### FOC Category IDs (inside Standard Detachment)

| Slot | UUID suffix |
|---|---|
| No Force Org Slot | `000000000028` |
| HQ | `000000000020` |
| Troops | `000000000021` |
| Elites | `000000000022` |
| Fast Attack | `000000000023` |
| Heavy Support | `000000000024` |
| Lord of War | `000000000025` |
| Fortifications | `000000000026` |
| Dedicated Transport | `000000000027` |

*(These IDs are reused in the Daemonic Incursion Detachment's `.cat` so units assigned to a slot by UUID resolve to the same slot in both detachments.)*

### USR rule IDs (currently in the library)

| USR | UUID suffix |
|---|---|
| Daemon | `000000000040` |
| Fear | `000000000041` |
| Furious Charge | `000000000042` |
| Rage | `000000000043` |
| Fleet | `000000000044` |
| Adamantium Will | `000000000045` |
| Daemonic Summoning | `000000000046` |
| Shred | `000000000047` |
| Fearless | `000000000048` |

### Cost Type ID

`points` (literal string, not a UUID)

---

## Known Phase 1 limitations

- **Most wargear costs are placeholders.** Bloodletters are 10 pts/model (matches real 7e). Bloodreaper upgrade, Instrument of Chaos, and Daemonic Icon are all 0 pts — replace when you do a points pass.
- **Only Bloodletters is fully populated.** Other Daemon units need to be authored following the same pattern.
- **Bloodletters as Elites in non-Daemon detachments** is not modeled. This catalog puts them in Troops only.
- **The Warp Bleeds Through** is a placeholder rule pending v0.2 design completion in the main Omnihammer repo.
- **Only 9 USRs** are in the shared library. Add more on demand using the pattern above.
