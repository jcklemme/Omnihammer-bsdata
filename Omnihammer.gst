<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<gameSystem id="sys-7446-044b-34d3-de1b" name="Omnihammer" battleScribeVersion="2.03" revision="2" type="gameSystem" xmlns="http://www.battlescribe.net/schema/gameSystemSchema">
  <categoryEntries>
    <categoryEntry name="HQ" id="default-category"/>
    <categoryEntry name="Troops" id="0cbd-fb0a-601f-c294" hidden="false"/>
    <categoryEntry name="Fast Attack" id="f1ea-7646-3cb3-5d32" hidden="false"/>
    <categoryEntry name="Elites" id="b31b-2a64-ec25-5802" hidden="false"/>
    <categoryEntry name="Heavy Support" id="3af9-fe23-b443-f75f" hidden="false"/>
    <categoryEntry name="Fortifications" id="3a09-6a51-61cf-c751" hidden="false"/>
    <categoryEntry name="Lord of War" id="d36e-1e1f-b772-a837" hidden="false"/>
    <categoryEntry name="No Force Org Slot" id="fc30-a6c5-cfa2-b5ee" hidden="false"/>
  </categoryEntries>
  <forceEntries>
    <forceEntry name="Standard Detachment" hidden="false" id="default-force">
      <categoryLinks>
        <categoryLink name="HQ" hidden="false" id="default-force-category-link" targetId="default-category">
          <constraints>
            <constraint type="min" value="1" field="selections" scope="parent" shared="true" id="68c8-232d-a3d0-be07"/>
            <constraint type="max" value="2" field="selections" scope="parent" shared="true" id="7701-cf59-1093-289d"/>
          </constraints>
        </categoryLink>
        <categoryLink name="Elites" hidden="false" id="857f-a2cd-1e5a-9e33" targetId="b31b-2a64-ec25-5802">
          <constraints>
            <constraint type="max" value="3" field="selections" scope="parent" shared="true" id="4273-affb-c522-566b"/>
          </constraints>
        </categoryLink>
        <categoryLink name="Troops" hidden="false" id="c86c-d02d-951e-f745" targetId="0cbd-fb0a-601f-c294">
          <constraints>
            <constraint type="min" value="2" field="selections" scope="parent" shared="true" id="2010-7677-8221-f60c"/>
            <constraint type="max" value="6" field="selections" scope="parent" shared="true" id="d579-b8f7-9ff3-f40f"/>
          </constraints>
        </categoryLink>
        <categoryLink name="Fast Attack" hidden="false" id="cf76-9717-e1c1-3a0b" targetId="f1ea-7646-3cb3-5d32">
          <constraints>
            <constraint type="max" value="3" field="selections" scope="parent" shared="true" id="f796-996f-80e0-b21c"/>
          </constraints>
        </categoryLink>
        <categoryLink name="Fortifications" hidden="false" id="8556-fb9f-f66e-4bb4" targetId="3a09-6a51-61cf-c751">
          <constraints>
            <constraint type="max" value="2" field="selections" scope="parent" shared="true" id="61cb-46ad-d14c-1038"/>
          </constraints>
        </categoryLink>
        <categoryLink name="Heavy Support" hidden="false" id="74f4-8b6a-fd00-d7dd" targetId="3af9-fe23-b443-f75f">
          <constraints>
            <constraint type="max" value="3" field="selections" scope="parent" shared="true" id="7851-3a21-0b4d-9e4e"/>
          </constraints>
        </categoryLink>
        <categoryLink name="Lord of War" hidden="false" id="4e60-653e-9447-7236" targetId="d36e-1e1f-b772-a837">
          <constraints>
            <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="6c59-595c-0405-6b09"/>
          </constraints>
        </categoryLink>
        <categoryLink name="No Force Org Slot" hidden="false" id="4e50-f0cf-29e5-3f24" targetId="fc30-a6c5-cfa2-b5ee"/>
      </categoryLinks>
    </forceEntry>
  </forceEntries>
  <selectionEntries>
    <selectionEntry type="upgrade" import="true" name="Default Root Entry" hidden="false" id="default-entry">
      <categoryLinks>
        <categoryLink targetId="default-category" id="default-category-link" primary="true" name="HQ" hidden="false"/>
      </categoryLinks>
    </selectionEntry>
  </selectionEntries>
  <costTypes>
    <costType name="points" id="4325-5454-e8e6-336e" defaultCostLimit="-1"/>
  </costTypes>
  <profileTypes>
    <profileType name="Model" id="9de8-26b5-d90b-5109" hidden="false">
      <characteristicTypes>
        <characteristicType name="WS" id="ef53-0e11-b8f5-179b"/>
        <characteristicType name="BS" id="8e78-3926-bbb0-dc19"/>
        <characteristicType name="S" id="a3fa-e84f-d307-e25d"/>
        <characteristicType name="T" id="7cb5-d918-695c-10d5"/>
        <characteristicType name="W" id="a297-dd65-3ff5-5167"/>
        <characteristicType name="I" id="c33f-f237-849d-b320"/>
        <characteristicType name="A" id="785b-86e1-ef7f-5f93"/>
        <characteristicType name="Ld" id="8882-da4e-9345-5b0e"/>
        <characteristicType name="Save" id="27c9-2f7f-bc73-246f"/>
        <characteristicType name="Inv" id="7fbf-bdc3-7ed5-8225"/>
        <characteristicType name="Type" id="510c-2b02-2e63-dfbb"/>
      </characteristicTypes>
    </profileType>
    <profileType name="Ability" id="7bf1-946e-eb25-75b9" hidden="false">
      <characteristicTypes>
        <characteristicType name="Description" id="5805-b47e-15e1-ef3c"/>
      </characteristicTypes>
    </profileType>
    <profileType name="Weapon" id="c827-57c8-2633-8924" hidden="false">
      <characteristicTypes>
        <characteristicType name="Range" id="0395-9476-92e8-f458"/>
        <characteristicType name="S" id="68bd-ea90-d16e-7c8f"/>
        <characteristicType name="AP" id="7369-befd-eca9-5623"/>
        <characteristicType name="Type" id="1228-36ee-94f6-ec15"/>
        <characteristicType name="Special Rules" id="d8ac-106b-ffcd-44cc"/>
      </characteristicTypes>
    </profileType>
    <profileType name="Vehicle" id="7495-7eba-6cc3-33da" hidden="false">
      <characteristicTypes>
        <characteristicType name="WS" id="684f-2979-0e60-c687"/>
        <characteristicType name="BS" id="6fa6-9d58-7214-1e79"/>
        <characteristicType name="S" id="c8a2-0869-0d6c-23e8"/>
        <characteristicType name="FAV" id="d901-ec34-9f0c-460c"/>
        <characteristicType name="SAV" id="b97f-4aea-6530-47a1"/>
        <characteristicType name="RAV" id="63a9-6003-6e6e-20b0"/>
        <characteristicType name="I" id="75f1-6db7-9964-3999"/>
        <characteristicType name="A" id="12ef-04c7-0a2e-e95e"/>
        <characteristicType name="SP" id="bbe0-c3fe-2121-1bb6"/>
        <characteristicType name="Type" id="5ced-08a1-3507-18d6"/>
      </characteristicTypes>
    </profileType>
  </profileTypes>
  <sharedSelectionEntries>
    <selectionEntry type="upgrade" import="true" name="Boltgun" hidden="false" id="f982-0d95-c30c-455d">
      <infoLinks>
        <infoLink name="Boltgun" id="fa32-afeb-7b32-3b4f" hidden="false" type="profile" targetId="93b4-2e05-a1c5-4a6a"/>
      </infoLinks>
    </selectionEntry>
  </sharedSelectionEntries>
  <sharedProfiles>
    <profile name="Boltgun" typeId="c827-57c8-2633-8924" typeName="Weapon" hidden="false" id="93b4-2e05-a1c5-4a6a">
      <characteristics>
        <characteristic name="Range" typeId="0395-9476-92e8-f458">24&quot;</characteristic>
        <characteristic name="S" typeId="68bd-ea90-d16e-7c8f">4</characteristic>
        <characteristic name="AP" typeId="7369-befd-eca9-5623">5</characteristic>
        <characteristic name="Type" typeId="1228-36ee-94f6-ec15">Rapid Fire 1</characteristic>
        <characteristic name="Special Rules" typeId="d8ac-106b-ffcd-44cc"/>
      </characteristics>
    </profile>
  </sharedProfiles>
  <sharedRules>
    <rule name="Adamantium WIll" id="539b-ff37-35bf-72ae" hidden="false">
      <description>+1 bonus to deny the witch and the unit may attempt to deny the witch even if they are not a psyker themselves.</description>
    </rule>
    <rule name="Daemon" id="ea00-2472-2d27-90b9" hidden="false">
      <description>Model Gains a 5+ invulnerable save and causes Fear.
A unit with this special rule cannot be joined by a model without this special rule. Units with this special rule automatically pass all Morale and Pinning tests (and cannot choose to fail any of these tests). When a unit with the Daemonic Instability special rule loses an assault, it must take a Daemonic Instability test whenever it would be forced to take a BREAK TEST (this is taken instead of a Break Test). This uses the following procedure:
1) The unit takes a Leadership test. If the dice roll is a double 1 or double 6, the Daemons’ presence fluctuates:
Double 1 - Reality Blinks: All Wounds suffered by the unit during this phase are restored. Any models from this unit that were removed as casualties during this phase immediately return to play in coherency with a model in their unit that has not itself returned to play through Reality Blinks this phase. Models returning to play in this fashion must be placed at least 1&quot; away from enemy models, unless those models are from units locked in close combat with the returning model’s unit. If the returning model’s unit is locked in close combat, the returning model immediately makes a Pile In move. Models that cannot be placed in this way do not return.
Double 6 - Banished!: Remove the entire unit from play as casualties. Enemy units that were locked in combat with only the banished unit immediately consolidate.
2) Now, assuming that the unit has not rolled a Reality Blinks or a Banished! result, compare the dice roll to the Daemons’ Leadership value, taking into account modifiers, including any from the combat result. For each point the unit fails its Daemonic Instability test by, it suffers one additional Wound, allocated by the unit’s owning player, and with no saves of any kind allowed. Note that a failed Daemonic Instability test does not cause a Daemon unit to fall back - once any casualties have been removed, the unit remains locked in combat.</description>
    </rule>
    <rule name="Swift" id="04fe-bff5-e86b-99fb" hidden="false">
      <description>Unit may still charge into melee combat even if it advanced this turn.</description>
    </rule>
    <rule name="Deep Strike" id="1d03-3816-e244-c413" hidden="false">
      <description>When the unit is placed in reserves, it may choose to arrive via Deep Strike.</description>
    </rule>
    <rule name="Rage" id="769e-9716-a9d2-76f5" hidden="false">
      <description>A unit with this special rule gains +2 Attacks, instead of the usual +1, when it charges into close combat. Additionally, if there is a valid enemy unit within charge range, this unit must charge that target in the Assault phase.</description>
    </rule>
    <rule name="Furious Charge" id="9922-802c-55d7-d32c" hidden="false">
      <description>Models gain +1 strength and +1 initiative in assault on the turn they charged.</description>
    </rule>
  </sharedRules>
</gameSystem>
