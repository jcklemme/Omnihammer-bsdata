<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<gameSystem id="a1f3b5c2-0000-4000-8000-000000000001" name="OmniHammer" revision="1" battleScribeVersion="2.00" authorName="Black Crusade / Omnihammer project" authorContact="" authorUrl="https://github.com/jcklemme/Omnihammer" xmlns="http://www.battlescribe.net/schema/gameSystemSchema">
  <profiles/>
  <rules/>
  <infoLinks/>
  <costTypes>
    <costType id="points" name="pts" defaultCostLimit="0.0"/>
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
        <characteristicType id="a1f3b5c2-0000-4000-8000-000000000121" name="Strength"/>
        <characteristicType id="a1f3b5c2-0000-4000-8000-000000000122" name="AP"/>
        <characteristicType id="a1f3b5c2-0000-4000-8000-000000000123" name="Type"/>
      </characteristicTypes>
    </profileType>
    <profileType id="a1f3b5c2-0000-4000-8000-000000000013" name="Melee Weapon">
      <characteristicTypes>
        <characteristicType id="a1f3b5c2-0000-4000-8000-000000000130" name="Range"/>
        <characteristicType id="a1f3b5c2-0000-4000-8000-000000000131" name="Strength"/>
        <characteristicType id="a1f3b5c2-0000-4000-8000-000000000132" name="AP"/>
        <characteristicType id="a1f3b5c2-0000-4000-8000-000000000133" name="Type"/>
      </characteristicTypes>
    </profileType>
    <profileType id="a1f3b5c2-0000-4000-8000-000000000014" name="Wargear Item">
      <characteristicTypes>
        <characteristicType id="a1f3b5c2-0000-4000-8000-000000000140" name="Description"/>
      </characteristicTypes>
    </profileType>
  </profileTypes>
  <forceEntries>
    <forceEntry id="a1f3b5c2-0000-4000-8000-000000000030" name="Standard Detachment" hidden="false">
      <profiles/>
      <rules/>
      <infoLinks/>
      <modifiers/>
      <constraints/>
      <categoryEntries>
        <categoryEntry id="a1f3b5c2-0000-4000-8000-000000000028" name="No Force Org Slot" hidden="false">
          <profiles/>
          <rules/>
          <infoLinks/>
          <modifiers/>
          <constraints/>
        </categoryEntry>
        <categoryEntry id="a1f3b5c2-0000-4000-8000-000000000020" name="HQ" hidden="false">
          <profiles/>
          <rules/>
          <infoLinks/>
          <modifiers/>
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="false" includeChildSelections="false" includeChildForces="false" id="minSelections" type="min"/>
            <constraint field="selections" scope="parent" value="2.0" percentValue="false" shared="false" includeChildSelections="false" includeChildForces="true" id="maxSelections" type="max"/>
          </constraints>
        </categoryEntry>
        <categoryEntry id="a1f3b5c2-0000-4000-8000-000000000021" name="Troops" hidden="false">
          <profiles/>
          <rules/>
          <infoLinks/>
          <modifiers/>
          <constraints>
            <constraint field="selections" scope="parent" value="2.0" percentValue="false" shared="false" includeChildSelections="false" includeChildForces="false" id="minSelections" type="min"/>
            <constraint field="selections" scope="parent" value="6.0" percentValue="false" shared="false" includeChildSelections="false" includeChildForces="true" id="maxSelections" type="max"/>
          </constraints>
        </categoryEntry>
        <categoryEntry id="a1f3b5c2-0000-4000-8000-000000000022" name="Elites" hidden="false">
          <profiles/>
          <rules/>
          <infoLinks/>
          <modifiers/>
          <constraints>
            <constraint field="selections" scope="parent" value="0.0" percentValue="false" shared="false" includeChildSelections="false" includeChildForces="false" id="minSelections" type="min"/>
            <constraint field="selections" scope="parent" value="3.0" percentValue="false" shared="false" includeChildSelections="false" includeChildForces="true" id="maxSelections" type="max"/>
          </constraints>
        </categoryEntry>
        <categoryEntry id="a1f3b5c2-0000-4000-8000-000000000023" name="Fast Attack" hidden="false">
          <profiles/>
          <rules/>
          <infoLinks/>
          <modifiers/>
          <constraints>
            <constraint field="selections" scope="parent" value="0.0" percentValue="false" shared="false" includeChildSelections="false" includeChildForces="false" id="minSelections" type="min"/>
            <constraint field="selections" scope="parent" value="3.0" percentValue="false" shared="false" includeChildSelections="false" includeChildForces="true" id="maxSelections" type="max"/>
          </constraints>
        </categoryEntry>
        <categoryEntry id="a1f3b5c2-0000-4000-8000-000000000024" name="Heavy Support" hidden="false">
          <profiles/>
          <rules/>
          <infoLinks/>
          <modifiers/>
          <constraints>
            <constraint field="selections" scope="parent" value="0.0" percentValue="false" shared="false" includeChildSelections="false" includeChildForces="false" id="minSelections" type="min"/>
            <constraint field="selections" scope="parent" value="3.0" percentValue="false" shared="false" includeChildSelections="false" includeChildForces="true" id="maxSelections" type="max"/>
          </constraints>
        </categoryEntry>
        <categoryEntry id="a1f3b5c2-0000-4000-8000-000000000025" name="Lord of War" hidden="false">
          <profiles/>
          <rules/>
          <infoLinks/>
          <modifiers/>
          <constraints>
            <constraint field="selections" scope="parent" value="0.0" percentValue="false" shared="false" includeChildSelections="false" includeChildForces="false" id="minSelections" type="min"/>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="false" includeChildSelections="false" includeChildForces="true" id="maxSelections" type="max"/>
          </constraints>
        </categoryEntry>
        <categoryEntry id="a1f3b5c2-0000-4000-8000-000000000026" name="Fortifications" hidden="false">
          <profiles/>
          <rules/>
          <infoLinks/>
          <modifiers/>
          <constraints>
            <constraint field="selections" scope="parent" value="0.0" percentValue="false" shared="false" includeChildSelections="false" includeChildForces="false" id="minSelections" type="min"/>
            <constraint field="selections" scope="parent" value="2.0" percentValue="false" shared="false" includeChildSelections="false" includeChildForces="true" id="maxSelections" type="max"/>
          </constraints>
        </categoryEntry>
        <categoryEntry id="a1f3b5c2-0000-4000-8000-000000000027" name="Dedicated Transport" hidden="false">
          <profiles/>
          <rules/>
          <infoLinks/>
          <modifiers/>
          <constraints/>
        </categoryEntry>
      </categoryEntries>
      <forceEntries/>
    </forceEntry>
  </forceEntries>
  <sharedSelectionEntries/>
  <sharedSelectionEntryGroups/>
  <sharedRules>
    <rule id="a1f3b5c2-0000-4000-8000-000000000040" name="Daemon" hidden="false">
      <profiles/>
      <rules/>
      <infoLinks/>
      <modifiers/>
      <description>Model gains a 5+ invulnerable save and causes Fear. Additionally, units entirely composed of models with this special rule automatically pass Pinning Tests and Casualty Tests, and are immune to the effects of Suppression Tokens. When a unit with this rule loses a melee engagement, it does not take a standard Break Test. Instead, it takes a Daemonic Instability Test (a Leadership test with standard Break Test modifiers). If passed, the unit remains locked in combat. If failed, the unit suffers 1 unsaved wound per point failed by (no saves of any kind).</description>
    </rule>
    <rule id="a1f3b5c2-0000-4000-8000-000000000041" name="Fear" hidden="false">
      <profiles/>
      <rules/>
      <infoLinks/>
      <modifiers/>
      <description>Enemy units in base contact must pass a Leadership test before resolving their close combat attacks. If the test fails, those units attack with WS1 in the melee.</description>
    </rule>
    <rule id="a1f3b5c2-0000-4000-8000-000000000048" name="Fearless" hidden="false">
      <profiles/>
      <rules/>
      <infoLinks/>
      <modifiers/>
      <description>Automatically pass all Morale and Pinning tests. May not Take Cover! or choose to voluntarily fail a break test.</description>
    </rule>
    <rule id="a1f3b5c2-0000-4000-8000-000000000042" name="Furious Charge" hidden="false">
      <profiles/>
      <rules/>
      <infoLinks/>
      <modifiers/>
      <description>Models gain +1 Strength and +1 Initiative in assault on the turn they charged.</description>
    </rule>
    <rule id="a1f3b5c2-0000-4000-8000-000000000043" name="Rage" hidden="false">
      <profiles/>
      <rules/>
      <infoLinks/>
      <modifiers/>
      <description>Unit gains +2 Attacks, instead of the usual +1, when it charges. If a valid enemy is within charge range, the unit must charge that target.</description>
    </rule>
    <rule id="a1f3b5c2-0000-4000-8000-000000000044" name="Fleet" hidden="false">
      <profiles/>
      <rules/>
      <infoLinks/>
      <modifiers/>
      <description>Unit may still charge into melee combat even if it advanced this turn.</description>
    </rule>
    <rule id="a1f3b5c2-0000-4000-8000-000000000045" name="Adamantium Will" hidden="false">
      <profiles/>
      <rules/>
      <infoLinks/>
      <modifiers/>
      <description>+1 bonus to Deny the Witch and the unit may attempt to Deny the Witch even if they are not a psyker themselves.</description>
    </rule>
    <rule id="a1f3b5c2-0000-4000-8000-000000000046" name="Daemonic Summoning" hidden="false">
      <profiles/>
      <rules/>
      <infoLinks/>
      <modifiers/>
      <description>Units with this rule cannot be deployed at start of game; they must be placed in Reserve. When arriving from Reserve, they Deep Strike: center model must be placed within 6&quot; of a friendly model with a Personal Icon that was on the battlefield at the start of the turn. Models with the Daemon USR count as having a Personal Icon. The unit does not roll for Scatter.</description>
    </rule>
    <rule id="a1f3b5c2-0000-4000-8000-000000000047" name="Shred" hidden="false">
      <profiles/>
      <rules/>
      <infoLinks/>
      <modifiers/>
      <description>Re-rolls failed to-wound rolls.</description>
    </rule>
  </sharedRules>
  <sharedProfiles/>
</gameSystem>