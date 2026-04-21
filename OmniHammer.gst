<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<gameSystem id="539dd81d-2f1d-4ad1-9e29-f4210e309ea9" name="OmniHammer" revision="2" battleScribeVersion="2.00" authorName="Black Crusade / Omnihammer project" authorContact="" authorUrl="https://github.com/jcklemme/Omnihammer" xmlns="http://www.battlescribe.net/schema/gameSystemSchema">
  <profiles/>
  <rules/>
  <infoLinks/>
  <costTypes>
    <costType id="points" name="pts" defaultCostLimit="0.0"/>
  </costTypes>
  <profileTypes>
    <profileType id="d6f430e4-7fb5-4cd0-afed-faf95be1fac0" name="Unit">
      <characteristicTypes>
        <characteristicType id="203baa75-156f-45c4-9fcb-bf6f4c74fefd" name="Unit Type"/>
        <characteristicType id="af38b8c6-0bc1-4ffd-a292-7f67c36e3f97" name="WS"/>
        <characteristicType id="957e9164-0dd3-47e6-85f5-47ef0b251820" name="BS"/>
        <characteristicType id="09b8f785-6ff4-4688-9c90-18feaff7b997" name="S"/>
        <characteristicType id="8efd1bf4-6b68-4b54-b2e6-fe52d41febd5" name="T"/>
        <characteristicType id="b22cdd51-739b-4ad0-b370-eeb7231a7b6c" name="W"/>
        <characteristicType id="df8d7b7a-6d34-4d5a-8c26-898a064356bc" name="I"/>
        <characteristicType id="55640bbc-70dc-449b-9890-121b34089274" name="A"/>
        <characteristicType id="0ca7f712-ce72-4ebe-98d2-f2e9a0b02031" name="Ld"/>
        <characteristicType id="a3fd1be8-cc4c-4d38-b852-f990eee0882a" name="Sv"/>
        <characteristicType id="f4d2e4b5-5a60-4eaf-b7cd-6f2d006ba7f6" name="Inv"/>
      </characteristicTypes>
    </profileType>
    <profileType id="2e5b4a9d-353c-4d93-89a0-928471c762ab" name="Vehicle">
      <characteristicTypes>
        <characteristicType id="203baa75-156f-45c4-9fcb-bf6f4c74fefd" name="Unit Type"/>
        <characteristicType id="af38b8c6-0bc1-4ffd-a292-7f67c36e3f97" name="WS"/>
        <characteristicType id="957e9164-0dd3-47e6-85f5-47ef0b251820" name="BS"/>
        <characteristicType id="09b8f785-6ff4-4688-9c90-18feaff7b997" name="S"/>
        <characteristicType id="13a6dc65-5dff-4184-8867-f3d09e2ae6e0" name="AVF"/>
        <characteristicType id="300769cc-cf8f-4ce3-8fe5-b2db42a58c44" name="AVS"/>
        <characteristicType id="05bde427-8276-416b-8a46-33dfebaa2e27" name="AVR"/>
        <characteristicType id="df8d7b7a-6d34-4d5a-8c26-898a064356bc" name="I"/>
        <characteristicType id="55640bbc-70dc-449b-9890-121b34089274" name="A"/>
        <characteristicType id="ef6114f2-b4b8-4add-82d5-745b67238d14" name="SP"/>
      </characteristicTypes>
    </profileType>
    <profileType id="bd09c378-c2ff-46fc-bfd1-d761f0fc2a5a" name="Ranged Weapon">
      <characteristicTypes>
        <characteristicType id="b467e198-ef68-44c6-b593-f81bdebba7a1" name="Range"/>
        <characteristicType id="42729cba-3cae-4014-884c-585dafd1ef45" name="Strength"/>
        <characteristicType id="30fc57bd-0726-4c9c-a892-cb63964287a3" name="AP"/>
        <characteristicType id="1cc5bd95-7bdd-44f2-bed7-7bd5052c37ca" name="Type"/>
      </characteristicTypes>
    </profileType>
    <profileType id="270112e3-9102-4775-896e-3bdcb5b010d4" name="Melee Weapon">
      <characteristicTypes>
        <characteristicType id="b467e198-ef68-44c6-b593-f81bdebba7a1" name="Range"/>
        <characteristicType id="42729cba-3cae-4014-884c-585dafd1ef45" name="Strength"/>
        <characteristicType id="30fc57bd-0726-4c9c-a892-cb63964287a3" name="AP"/>
        <characteristicType id="1cc5bd95-7bdd-44f2-bed7-7bd5052c37ca" name="Type"/>
      </characteristicTypes>
    </profileType>
    <profileType id="cfd36987-6625-4b8b-8c3d-6b415cfb91f4" name="Wargear Item">
      <characteristicTypes>
        <characteristicType id="c51ac382-bbf9-40d0-b488-8437981cafa5" name="Description"/>
      </characteristicTypes>
    </profileType>
  </profileTypes>
  <forceEntries>
    <forceEntry id="cab553f0-2f92-43ad-affb-622fc784c3d0" name="Standard Detachment" hidden="false">
      <profiles/>
      <rules/>
      <infoLinks/>
      <modifiers/>
      <constraints/>
      <categoryEntries>
        <categoryEntry id="d4c0fa3c-b978-4584-8b1f-6fbe956d9500" name="No Force Org Slot" hidden="false">
          <profiles/>
          <rules/>
          <infoLinks/>
          <modifiers/>
          <constraints/>
        </categoryEntry>
        <categoryEntry id="75dda100-98f2-4d61-9aeb-3b6a32a92c75" name="HQ" hidden="false">
          <profiles/>
          <rules/>
          <infoLinks/>
          <modifiers/>
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="false" includeChildSelections="false" includeChildForces="false" id="minSelections" type="min"/>
            <constraint field="selections" scope="parent" value="2.0" percentValue="false" shared="false" includeChildSelections="false" includeChildForces="true" id="maxSelections" type="max"/>
          </constraints>
        </categoryEntry>
        <categoryEntry id="afbc5da6-3f3d-46ca-9127-af80f7350c2f" name="Troops" hidden="false">
          <profiles/>
          <rules/>
          <infoLinks/>
          <modifiers/>
          <constraints>
            <constraint field="selections" scope="parent" value="2.0" percentValue="false" shared="false" includeChildSelections="false" includeChildForces="false" id="minSelections" type="min"/>
            <constraint field="selections" scope="parent" value="6.0" percentValue="false" shared="false" includeChildSelections="false" includeChildForces="true" id="maxSelections" type="max"/>
          </constraints>
        </categoryEntry>
        <categoryEntry id="8aec27a4-37ea-46d5-9511-c0cc4592f90e" name="Elites" hidden="false">
          <profiles/>
          <rules/>
          <infoLinks/>
          <modifiers/>
          <constraints>
            <constraint field="selections" scope="parent" value="0.0" percentValue="false" shared="false" includeChildSelections="false" includeChildForces="false" id="minSelections" type="min"/>
            <constraint field="selections" scope="parent" value="3.0" percentValue="false" shared="false" includeChildSelections="false" includeChildForces="true" id="maxSelections" type="max"/>
          </constraints>
        </categoryEntry>
        <categoryEntry id="3cca07fc-fcee-49f1-a8e1-22737cc5fb2b" name="Fast Attack" hidden="false">
          <profiles/>
          <rules/>
          <infoLinks/>
          <modifiers/>
          <constraints>
            <constraint field="selections" scope="parent" value="0.0" percentValue="false" shared="false" includeChildSelections="false" includeChildForces="false" id="minSelections" type="min"/>
            <constraint field="selections" scope="parent" value="3.0" percentValue="false" shared="false" includeChildSelections="false" includeChildForces="true" id="maxSelections" type="max"/>
          </constraints>
        </categoryEntry>
        <categoryEntry id="b1cde6b4-e72b-43aa-a63a-2cb2203d91ca" name="Heavy Support" hidden="false">
          <profiles/>
          <rules/>
          <infoLinks/>
          <modifiers/>
          <constraints>
            <constraint field="selections" scope="parent" value="0.0" percentValue="false" shared="false" includeChildSelections="false" includeChildForces="false" id="minSelections" type="min"/>
            <constraint field="selections" scope="parent" value="3.0" percentValue="false" shared="false" includeChildSelections="false" includeChildForces="true" id="maxSelections" type="max"/>
          </constraints>
        </categoryEntry>
        <categoryEntry id="0ade9bb3-a867-40d7-b06d-e098d60f45ee" name="Lord of War" hidden="false">
          <profiles/>
          <rules/>
          <infoLinks/>
          <modifiers/>
          <constraints>
            <constraint field="selections" scope="parent" value="0.0" percentValue="false" shared="false" includeChildSelections="false" includeChildForces="false" id="minSelections" type="min"/>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="false" includeChildSelections="false" includeChildForces="true" id="maxSelections" type="max"/>
          </constraints>
        </categoryEntry>
        <categoryEntry id="d2ba8a4a-19c3-431e-a669-9f77a7de7ccf" name="Fortifications" hidden="false">
          <profiles/>
          <rules/>
          <infoLinks/>
          <modifiers/>
          <constraints>
            <constraint field="selections" scope="parent" value="0.0" percentValue="false" shared="false" includeChildSelections="false" includeChildForces="false" id="minSelections" type="min"/>
            <constraint field="selections" scope="parent" value="2.0" percentValue="false" shared="false" includeChildSelections="false" includeChildForces="true" id="maxSelections" type="max"/>
          </constraints>
        </categoryEntry>
        <categoryEntry id="a59dcb73-ab9b-4e9b-bc20-f80fe850d888" name="Dedicated Transport" hidden="false">
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
    <rule id="dfc02f27-3087-4ade-b825-5782565375d5" name="Daemon" hidden="false">
      <profiles/>
      <rules/>
      <infoLinks/>
      <modifiers/>
      <description>Model gains a 5+ invulnerable save and causes Fear. Units entirely composed of models with this rule automatically pass Pinning Tests and Casualty Tests, and are immune to Suppression Tokens. When a unit with this rule loses a melee engagement, it does not take a standard Break Test — instead it takes a Daemonic Instability Test (Leadership test with standard Break Test modifiers). If passed, remains locked in combat. If failed, suffers 1 unsaved wound per point failed by (no saves of any kind).</description>
    </rule>
    <rule id="21ad7196-e2a4-4ac7-ac86-6f2549046fb0" name="Fear" hidden="false">
      <profiles/>
      <rules/>
      <infoLinks/>
      <modifiers/>
      <description>Enemy units in base contact must pass a Leadership test before resolving their close combat attacks. If failed, they attack with WS1 in that melee.</description>
    </rule>
    <rule id="86278ab9-60d1-4b39-83f3-1ebba28868a0" name="Fearless" hidden="false">
      <profiles/>
      <rules/>
      <infoLinks/>
      <modifiers/>
      <description>Automatically pass all Morale and Pinning tests. May not Take Cover! or voluntarily fail a break test.</description>
    </rule>
    <rule id="3e750783-7c1b-4f7a-99a1-41c902890f89" name="Furious Charge" hidden="false">
      <profiles/>
      <rules/>
      <infoLinks/>
      <modifiers/>
      <description>Models gain +1 Strength and +1 Initiative in assault on the turn they charged.</description>
    </rule>
    <rule id="111b173f-3736-4c0e-b6a4-3e182b3f57e8" name="Rage" hidden="false">
      <profiles/>
      <rules/>
      <infoLinks/>
      <modifiers/>
      <description>Unit gains +2 Attacks, instead of the usual +1, when it charges. If a valid enemy is within charge range, the unit must charge that target.</description>
    </rule>
    <rule id="8becccf0-41ce-4655-8803-bd634c20d680" name="Fleet" hidden="false">
      <profiles/>
      <rules/>
      <infoLinks/>
      <modifiers/>
      <description>Unit may still charge into melee combat even if it advanced this turn.</description>
    </rule>
    <rule id="d8c926c8-6fa5-4944-8e76-8fecfb94930d" name="Adamantium Will" hidden="false">
      <profiles/>
      <rules/>
      <infoLinks/>
      <modifiers/>
      <description>+1 bonus to Deny the Witch. The unit may attempt to Deny the Witch even if they are not a psyker themselves.</description>
    </rule>
    <rule id="4f082737-08f3-41bf-80d8-2e7ff4a120bd" name="Daemonic Summoning" hidden="false">
      <profiles/>
      <rules/>
      <infoLinks/>
      <modifiers/>
      <description>Units with this rule cannot be deployed at start of game and must be placed in Reserve. When arriving from Reserve, they Deep Strike: center model must be placed within 6&quot; of a friendly model with a Personal Icon that was on the battlefield at the start of the turn. Models with the Daemon USR count as having a Personal Icon. The unit does not roll for Scatter.</description>
    </rule>
    <rule id="6dd9771f-2bf0-4d98-a73f-f74984b76f63" name="Shred" hidden="false">
      <profiles/>
      <rules/>
      <infoLinks/>
      <modifiers/>
      <description>Re-rolls failed to-wound rolls.</description>
    </rule>
    <rule id="dbe15da4-8742-46f3-9e8d-784e2eb5dd4f" name="Scouts" hidden="false">
      <profiles/>
      <rules/>
      <infoLinks/>
      <modifiers/>
      <description>May always be deployed. Before rolling to see who goes first, may take a bonus normal move. Confers Scout to a dedicated transport it is mounted in. If both players have Scouts, roll-off and alternate moving scouts starting with the winner. The unit also gains Outflank.</description>
    </rule>
    <rule id="a79d0441-32dd-439b-9753-8ad3f57350e6" name="Hammer of Wrath" hidden="false">
      <profiles/>
      <rules/>
      <infoLinks/>
      <modifiers/>
      <description>On the turn this unit charges, models may perform X of their normally allowed attacks at initiative 10 instead of during their normal initiative step. Value of X is specified in parentheses; if not specified, X=1.</description>
    </rule>
    <rule id="8970f108-2880-435c-a7c8-9b4fa02248bd" name="Soul Blaze" hidden="false">
      <profiles/>
      <rules/>
      <infoLinks/>
      <modifiers/>
      <description>Units wounded by this attack are set ablaze. Roll D6 at the end of each turn. On a 4+, the unit takes D3 S4 AP5 hits with no cover saves. If less than 4, the blaze goes out and the effect is removed.</description>
    </rule>
    <rule id="e44b0a3a-5242-4cea-9a4a-db3e9f60d5c2" name="Ignores Cover" hidden="false">
      <profiles/>
      <rules/>
      <infoLinks/>
      <modifiers/>
      <description>Weapon negates any cover saves.</description>
    </rule>
    <rule id="a7b76af6-95fe-4234-a712-1f335a1fff17" name="Deep Strike" hidden="false">
      <profiles/>
      <rules/>
      <infoLinks/>
      <modifiers/>
      <description>Units with this rule may be held in Reserve and arrive via Deep Strike deployment. See the Core Rules Reserves and Deep Strike section for full deployment procedure, including scatter rules and mishap resolution.</description>
    </rule>
  </sharedRules>
  <sharedProfiles/>
</gameSystem>