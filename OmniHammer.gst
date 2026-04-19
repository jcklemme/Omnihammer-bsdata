<?xml version="1.0" encoding="utf-8"?>
<gameSystem
    id="a1f3b5c2-0000-4000-8000-000000000001"
    name="OmniHammer"
    revision="1"
    battleScribeVersion="2.02"
    authorName="Black Crusade / Omnihammer project"
    authorContact=""
    authorUrl="https://github.com/jcklemme/Omnihammer"
    xmlns="http://www.battlescribe.net/schema/gameSystemSchema">
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
        <categoryLink id="e980aaac-769a-493f-99d2-498406cf628b" name="HQ" hidden="false" targetId="a1f3b5c2-0000-4000-8000-000000000020" primary="false">
          <constraints>
            <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="1c0c6b90-93dd-413e-b643-0e0aae146d52" type="min"/>
            <constraint field="selections" scope="force" value="2" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="f686054d-cd80-4821-a697-8c68933aa802" type="max"/>
          </constraints>
        </categoryLink>
        <categoryLink id="bf71ac74-eaff-4f91-84ff-67032750c84a" name="Troops" hidden="false" targetId="a1f3b5c2-0000-4000-8000-000000000021" primary="false">
          <constraints>
            <constraint field="selections" scope="force" value="2" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="cdcf9cbd-f0ed-4d64-a29b-1feb204f8d09" type="min"/>
            <constraint field="selections" scope="force" value="6" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="6b8d5085-41d6-423d-bc1d-2dd03baf0e9e" type="max"/>
          </constraints>
        </categoryLink>
        <categoryLink id="e90ec759-62a4-42d5-8a8b-47c3f57702b8" name="Elites" hidden="false" targetId="a1f3b5c2-0000-4000-8000-000000000022" primary="false">
          <constraints>
            <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="a952ab23-98f0-4443-b931-559945868606" type="min"/>
            <constraint field="selections" scope="force" value="3" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="b497e0d8-fafc-405f-b1eb-cff876c6685f" type="max"/>
          </constraints>
        </categoryLink>
        <categoryLink id="6ba4a709-aaf5-4f1d-9913-ff96189c6739" name="Fast Attack" hidden="false" targetId="a1f3b5c2-0000-4000-8000-000000000023" primary="false">
          <constraints>
            <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="10eb8b4a-5898-4506-96c9-1cd006904717" type="min"/>
            <constraint field="selections" scope="force" value="3" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="a79a1e72-8d88-427b-a0c0-1a78097b3a98" type="max"/>
          </constraints>
        </categoryLink>
        <categoryLink id="1f73b364-340f-429f-91d8-10e9a726362a" name="Heavy Support" hidden="false" targetId="a1f3b5c2-0000-4000-8000-000000000024" primary="false">
          <constraints>
            <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="a9248005-d27d-4bef-8605-590c3b09c9e2" type="min"/>
            <constraint field="selections" scope="force" value="3" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="c707610d-0eb1-4115-8b04-9f8724f7dd82" type="max"/>
          </constraints>
        </categoryLink>
        <categoryLink id="7ade05aa-e054-463c-8f98-b4126c852c9d" name="Lord of War" hidden="false" targetId="a1f3b5c2-0000-4000-8000-000000000025" primary="false">
          <constraints>
            <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="792af450-3e44-4cbb-ae99-454c91e3ea73" type="min"/>
            <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="a511d51a-7f67-41f2-8f53-c828ae4f767f" type="max"/>
          </constraints>
        </categoryLink>
        <categoryLink id="5536806d-589b-4f02-83c6-3ebdacd2d159" name="Fortifications" hidden="false" targetId="a1f3b5c2-0000-4000-8000-000000000026" primary="false">
          <constraints>
            <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="14151f5d-fc3e-44b9-a906-ee59a44507ee" type="min"/>
            <constraint field="selections" scope="force" value="2" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="9bd4f0d4-2765-41cf-81a5-3b9175462db6" type="max"/>
          </constraints>
        </categoryLink>
      </categoryLinks>
    </forceEntry>
  </forceEntries>
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
</gameSystem>