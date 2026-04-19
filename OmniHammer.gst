<?xml version="1.0" encoding="utf-8"?>
<gameSystem
    id="a1f3b5c2-0000-4000-8000-000000000001"
    name="OmniHammer"
    revision="1"
    battleScribeVersion="2.03"
    authorName="Black Crusade / Omnihammer project"
    authorContact=""
    authorUrl="https://github.com/jcklemme/Omnihammer"
    xmlns="http://www.battlescribe.net/schema/gameSystemSchema">
  <readme>OmniHammer game system. See README.md in the repo root.</readme>
  <publications>
    <publication id="a1f3b5c2-0000-4000-8000-000000000002" name="OmniHammer Core Rules"/>
  </publications>
  <costTypes>
    <costType id="a1f3b5c2-0000-4000-8000-000000000003" name="pts" defaultCostLimit="-1.0" hidden="false"/>
  </costTypes>
  <profileTypes>
    <profileType id="a1f3b5c2-0000-4000-8000-000000000010" name="Unit">
      <characteristicTypes>
        <characteristicType id="a1f3b5c2-0000-4000-8000-000000000100" name="Unit Type"/>
        <characteristicType id="a1f3b5c2-0000-4000-8000-000000000101" name="WS"/>
        <characteristicType id="a1f3b5c2-0000-4000-8000-000000000102" name="BS"/>
        <characteristicType id="a1f3b5c2-0000-4000-8000-000000000103" name="S"/>
        <characteristicType id="a1f3b5c2-0000-4000-8000-000000000104" name="T"/>
        <characteristicType id="a1f3b5c2-0000-4000-8000-000000000105" name="W"/>
        <characteristicType id="a1f3b5c2-0000-4000-8000-000000000106" name="I"/>
        <characteristicType id="a1f3b5c2-0000-4000-8000-000000000107" name="A"/>
        <characteristicType id="a1f3b5c2-0000-4000-8000-000000000108" name="Ld"/>
        <characteristicType id="a1f3b5c2-0000-4000-8000-000000000109" name="Sv"/>
        <characteristicType id="a1f3b5c2-0000-4000-8000-00000000010a" name="Inv"/>
      </characteristicTypes>
    </profileType>
    <profileType id="a1f3b5c2-0000-4000-8000-000000000011" name="Vehicle">
      <characteristicTypes>
        <characteristicType id="a1f3b5c2-0000-4000-8000-000000000110" name="Unit Type"/>
        <characteristicType id="a1f3b5c2-0000-4000-8000-000000000111" name="WS"/>
        <characteristicType id="a1f3b5c2-0000-4000-8000-000000000112" name="BS"/>
        <characteristicType id="a1f3b5c2-0000-4000-8000-000000000113" name="S"/>
        <characteristicType id="a1f3b5c2-0000-4000-8000-000000000114" name="AVF"/>
        <characteristicType id="a1f3b5c2-0000-4000-8000-000000000115" name="AVS"/>
        <characteristicType id="a1f3b5c2-0000-4000-8000-000000000116" name="AVR"/>
        <characteristicType id="a1f3b5c2-0000-4000-8000-000000000117" name="I"/>
        <characteristicType id="a1f3b5c2-0000-4000-8000-000000000118" name="A"/>
        <characteristicType id="a1f3b5c2-0000-4000-8000-000000000119" name="SP"/>
      </characteristicTypes>
    </profileType>
    <profileType id="a1f3b5c2-0000-4000-8000-000000000012" name="Ranged Weapon">
      <characteristicTypes>
        <characteristicType id="a1f3b5c2-0000-4000-8000-000000000120" name="Range"/>
        <characteristicType id="a1f3b5c2-0000-4000-8000-000000000121" name="S"/>
        <characteristicType id="a1f3b5c2-0000-4000-8000-000000000122" name="AP"/>
        <characteristicType id="a1f3b5c2-0000-4000-8000-000000000123" name="Type"/>
      </characteristicTypes>
    </profileType>
    <profileType id="a1f3b5c2-0000-4000-8000-000000000013" name="Melee Weapon">
      <characteristicTypes>
        <characteristicType id="a1f3b5c2-0000-4000-8000-000000000130" name="Range"/>
        <characteristicType id="a1f3b5c2-0000-4000-8000-000000000131" name="S"/>
        <characteristicType id="a1f3b5c2-0000-4000-8000-000000000132" name="AP"/>
        <characteristicType id="a1f3b5c2-0000-4000-8000-000000000133" name="Type"/>
      </characteristicTypes>
    </profileType>
  </profileTypes>
  <categoryEntries>
    <categoryEntry id="a1f3b5c2-0000-4000-8000-000000000020" name="HQ" hidden="false"/>
    <categoryEntry id="a1f3b5c2-0000-4000-8000-000000000021" name="Troops" hidden="false"/>
    <categoryEntry id="a1f3b5c2-0000-4000-8000-000000000022" name="Elites" hidden="false"/>
    <categoryEntry id="a1f3b5c2-0000-4000-8000-000000000023" name="Fast Attack" hidden="false"/>
    <categoryEntry id="a1f3b5c2-0000-4000-8000-000000000024" name="Heavy Support" hidden="false"/>
    <categoryEntry id="a1f3b5c2-0000-4000-8000-000000000025" name="Lord of War" hidden="false"/>
    <categoryEntry id="a1f3b5c2-0000-4000-8000-000000000026" name="Fortifications" hidden="false"/>
    <categoryEntry id="a1f3b5c2-0000-4000-8000-000000000027" name="Dedicated Transport" hidden="false"/>
    <categoryEntry id="a1f3b5c2-0000-4000-8000-000000000028" name="Configuration" hidden="false"/>
    <categoryEntry id="a1f3b5c2-0000-4000-8000-000000000029" name="Character" hidden="false"/>
  </categoryEntries>
  <forceEntries>
    <forceEntry id="a1f3b5c2-0000-4000-8000-000000000030" name="Standard Detachment" hidden="false">
      <categoryLinks>
        <categoryLink id="d2e8037e-f9ee-4ccd-982c-27dcfdc8ba12" name="HQ" hidden="false" targetId="a1f3b5c2-0000-4000-8000-000000000020" primary="false">
          <constraints>
            <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="fa040468-796e-4405-a189-12f2ff43c781" type="min"/>
            <constraint field="selections" scope="force" value="2" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="49f1df19-22ef-461d-b273-446063461799" type="max"/>
          </constraints>
        </categoryLink>
        <categoryLink id="fc26dc2f-5437-45c6-90c0-04316b8bcb34" name="Troops" hidden="false" targetId="a1f3b5c2-0000-4000-8000-000000000021" primary="false">
          <constraints>
            <constraint field="selections" scope="force" value="2" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="f244b078-5e79-4572-b5c3-1df525024ad7" type="min"/>
            <constraint field="selections" scope="force" value="6" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="44afa927-033b-44a0-bc25-a7bb08bf9ecb" type="max"/>
          </constraints>
        </categoryLink>
        <categoryLink id="ee44aa27-e920-436e-9586-2305f1912f8c" name="Elites" hidden="false" targetId="a1f3b5c2-0000-4000-8000-000000000022" primary="false">
          <constraints>
            <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="dc997ded-6764-47c4-991d-4edb0f9e49cf" type="min"/>
            <constraint field="selections" scope="force" value="3" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="a4ebe858-e0b9-4e38-91b2-ce9c32ba73e8" type="max"/>
          </constraints>
        </categoryLink>
        <categoryLink id="1ece47e7-f0df-4e7c-b0f3-80e0cc42b01a" name="Fast Attack" hidden="false" targetId="a1f3b5c2-0000-4000-8000-000000000023" primary="false">
          <constraints>
            <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="d9175fec-6eec-4bad-b315-1fc24461678c" type="min"/>
            <constraint field="selections" scope="force" value="3" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="006b0c3e-1b9d-4ee8-b38e-398c9aa340a0" type="max"/>
          </constraints>
        </categoryLink>
        <categoryLink id="3d82f70c-a5fe-400e-9c1c-f1a3bc02d745" name="Heavy Support" hidden="false" targetId="a1f3b5c2-0000-4000-8000-000000000024" primary="false">
          <constraints>
            <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="f29deff5-dd8a-4e32-b84f-e12628567d47" type="min"/>
            <constraint field="selections" scope="force" value="3" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="492b30a1-6a66-4b87-948b-b58c3930a20c" type="max"/>
          </constraints>
        </categoryLink>
        <categoryLink id="bb445ac0-c241-4f37-bb23-f7d62df6389d" name="Lord of War" hidden="false" targetId="a1f3b5c2-0000-4000-8000-000000000025" primary="false">
          <constraints>
            <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="3426b430-0b87-4e8a-8628-3c29f35a00b9" type="min"/>
            <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="72ba3e41-18bf-4bb8-8b10-5ccaffc7231b" type="max"/>
          </constraints>
        </categoryLink>
        <categoryLink id="b9630181-8afa-4947-aad2-7b174776ee04" name="Fortifications" hidden="false" targetId="a1f3b5c2-0000-4000-8000-000000000026" primary="false">
          <constraints>
            <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="fade3fbe-8d34-43a8-a813-499cf56538f3" type="min"/>
            <constraint field="selections" scope="force" value="2" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="6e7e9fa7-e0ce-4e2c-98dc-55a743246ebd" type="max"/>
          </constraints>
        </categoryLink>
      </categoryLinks>
    </forceEntry>
  </forceEntries>
  <sharedSelectionEntries/>
  <sharedSelectionEntryGroups/>
  <sharedProfiles/>
  <sharedRules>
    <rule id="a1f3b5c2-0000-4000-8000-000000000040" name="Daemon" hidden="false">
      <description>Model gains a 5+ invulnerable save and causes Fear. Additionally, units entirely composed of models with this special rule automatically pass Pinning Tests and Casualty Tests, and are immune to the effects of Suppression Tokens (they do not accrue them). When a unit with this rule loses a melee engagement, it does not take a standard Break Test. Instead, it takes a Daemonic Instability Test. This is a Leadership test, subject to the standard Break Test modifiers (e.g., -1 for every three wounds lost by). Daemonic Instability Tests are not subject to the Insane Heroism rule.

If passed: The unit remains locked in combat.
If failed: The unit does not become Broken and does not Retreat. Instead, the unit suffers 1 unsaved wound for every point the test was failed by. No saving throws of any kind (including invulnerable or Feel No Pain) may be taken against these wounds. If models survive, the unit remains locked in combat.</description>
    </rule>
    <rule id="a1f3b5c2-0000-4000-8000-000000000041" name="Fear" hidden="false">
      <description>Enemy units in base contact must pass a Leadership test before resolving their close combat attacks. If the test fails, those units attack with WS1 in the melee engagement.</description>
    </rule>
    <rule id="a1f3b5c2-0000-4000-8000-000000000048" name="Fearless" hidden="false">
      <description>Automatically pass all Morale and Pinning tests. May not Take Cover! or choose to voluntarily fail a break test.</description>
    </rule>
    <rule id="a1f3b5c2-0000-4000-8000-000000000042" name="Furious Charge" hidden="false">
      <description>Models gain +1 Strength and +1 Initiative in assault on the turn they charged.</description>
    </rule>
    <rule id="a1f3b5c2-0000-4000-8000-000000000043" name="Rage" hidden="false">
      <description>A unit with this special rule gains +2 Attacks, instead of the usual +1, when it charges into close combat. Additionally, if there is a valid enemy unit within charge range, this unit must charge that target in the Assault phase.</description>
    </rule>
    <rule id="a1f3b5c2-0000-4000-8000-000000000044" name="Fleet" hidden="false">
      <description>Unit may still charge into melee combat even if it advanced this turn.</description>
    </rule>
    <rule id="a1f3b5c2-0000-4000-8000-000000000045" name="Adamantium Will" hidden="false">
      <description>+1 bonus to Deny the Witch and the unit may attempt to Deny the Witch even if they are not a psyker themselves.</description>
    </rule>
    <rule id="a1f3b5c2-0000-4000-8000-000000000046" name="Daemonic Summoning" hidden="false">
      <description>Units with this special rule cannot be deployed on the battlefield at the start of the game and must be placed in Reserve. When a unit with this rule arrives from Reserve, it must enter play using the Deep Strike rules with the following modifications:

- The center model of the Deep Strike must be placed within 6&quot; of a friendly model equipped with a Personal Icon that was on the battlefield at the start of the current turn. (Note: All models that possess the Daemon Universal Special Rule inherently count as having a Personal Icon.)
- The unit does not roll for Scatter. This replaces the normal Deep Strike scatter procedure described in the Core Rules — no scatter dice or 2D6&quot; are rolled.</description>
    </rule>
    <rule id="a1f3b5c2-0000-4000-8000-000000000047" name="Shred" hidden="false">
      <description>Re-rolls failed to-wound rolls.</description>
    </rule>
  </sharedRules>
  <sharedInfoGroups/>
</gameSystem>