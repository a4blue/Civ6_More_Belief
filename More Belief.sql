UPDATE `BeliefClasses` SET `MaxInReligion`=2 WHERE BeliefClassType='BELIEF_CLASS_WORSHIP';
UPDATE `BeliefClasses` SET `MaxInReligion`=2 WHERE BeliefClassType='BELIEF_CLASS_FOUNDER';
UPDATE `BeliefClasses` SET `MaxInReligion`=2 WHERE BeliefClassType='BELIEF_CLASS_FOLLOWER';
UPDATE `BeliefClasses` SET `MaxInReligion`=2 WHERE BeliefClassType='BELIEF_CLASS_ENHANCER';

INSERT INTO `Types`(`Type`,`Kind`) VALUES ('BUILDING_REFORMATION_HOUSE','KIND_BUILDING');

INSERT INTO `Buildings`(`BuildingType`,`Name`,`PrereqTech`,`PrereqCivic`,`Cost`,`PrereqDistrict`,`AdjacentDistrict`,`Description`,`OuterDefenseHitPoints`,`AdjacentResource`,`Coast`,`PurchaseYield`,`TraitType`,`CitizenSlots`,`Quote`,`QuoteAudio`,`AdvisorType`,`AdjacentImprovement`,`CityAdjacentTerrain`,`GovernmentTierRequirement`,`MaxPlayerInstances`,`RequiresReligion`)
VALUES ('BUILDING_REFORMATION_HOUSE','LOC_BUILDING_REFORMATION_HOUSE',NULL,NULL,60,'DISTRICT_HOLY_SITE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6,1);

INSERT INTO `BuildingPrereqs`(`Building`,`PrereqBuilding`) VALUES ('BUILDING_REFORMATION_HOUSE','BUILDING_TEMPLE');

INSERT INTO `Modifiers`(`ModifierId`,`ModifierType`,`OwnerRequirementSetId`,`SubjectRequirementSetId`,`OwnerStackLimit`,`SubjectStackLimit`) VALUES ('BUILDING_REFORMATION_HOUSE_ADD_BELIEF','MODIFIER_PLAYER_ADD_BELIEF',NULL,NULL,NULL,NULL);

INSERT INTO `ModifierArguments`(`ModifierId`,`Name`,`Value`,`Extra`,`SecondExtra`) VALUES ('BUILDING_REFORMATION_HOUSE_ADD_BELIEF','Amount',1,NULL,NULL);

INSERT INTO `BuildingModifiers`(`BuildingType`,`ModifierId`) VALUES ('BUILDING_REFORMATION_HOUSE','BUILDING_REFORMATION_HOUSE_ADD_BELIEF');

--INSERT INTO `Modifiers`(`ModifierId`,`ModifierType`,`OwnerRequirementSetId`,`SubjectRequirementSetId`,`OwnerStackLimit`,`SubjectStackLimit`) VALUES ('ALLOW_REFORMATION_HOUSE','MODIFIER_PLAYER_RELIGION_ADD_RELIGIOUS_BUILDING',NULL,NULL,NULL,NULL);

--INSERT INTO `ModifierArguments`(`ModifierId`,`Name`,`Value`,`Extra`,`SecondExtra`) VALUES ('ALLOW_REFORMATION_HOUSE','BuildingType','BUILDING_REFORMATION_HOUSE',NULL,NULL);

--INSERT INTO `BeliefModifiers`(`BeliefType`,`ModifierID`) SELECT BeliefType,'ALLOW_REFORMATION_HOUSE' FROM Beliefs WHERE `BeliefClassType` = 'LOC_BELIEF_CLASS_FOLLOWER_NAME';
