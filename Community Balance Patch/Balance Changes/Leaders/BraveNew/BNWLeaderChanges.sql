-- Ahmad -- Boost Kasbah, Ability
UPDATE Trait_YieldChangesPerTradePartner
SET Yield = '3'
WHERE YieldType = 'YIELD_GOLD' AND TraitType = 'TRAIT_GATEWAY_AFRICA' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_LEADERS' AND Value= 1 );

UPDATE Trait_YieldChangesPerTradePartner
SET Yield = '3'
WHERE YieldType = 'YIELD_CULTURE' AND TraitType = 'TRAIT_GATEWAY_AFRICA' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_LEADERS' AND Value= 1 );

UPDATE Improvement_Yields
SET Yield = '2'
WHERE YieldType = 'YIELD_GOLD' AND ImprovementType = 'IMPROVEMENT_KASBAH' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_LEADERS' AND Value= 1 );

UPDATE Improvement_Yields
SET Yield = '1'
WHERE YieldType = 'YIELD_FOOD' AND ImprovementType = 'IMPROVEMENT_KASBAH' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_LEADERS' AND Value= 1 );

UPDATE Improvement_Yields
SET Yield = '2'
WHERE YieldType = 'YIELD_PRODUCTION' AND ImprovementType = 'IMPROVEMENT_KASBAH' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_LEADERS' AND Value= 1 );

UPDATE Improvements
SET Cityside = '1'
WHERE Type = 'IMPROVEMENT_KASBAH' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_LEADERS' AND Value= 1 );

UPDATE Improvements
SET DefenseModifier = '30'
WHERE Type = 'IMPROVEMENT_KASBAH' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_LEADERS' AND Value= 1 );

UPDATE Improvements
SET BuildableOnResources = '1'
WHERE Type = 'IMPROVEMENT_KASBAH' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_LEADERS' AND Value= 1 );

UPDATE Improvements
SET NearbyEnemyDamage = '5'
WHERE Type = 'IMPROVEMENT_KASBAH' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_LEADERS' AND Value= 1 );

UPDATE Builds
SET PrereqTech = 'TECH_CHIVALRY'
WHERE Type = 'BUILD_KASBAH' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_LEADERS' AND Value= 1 );

UPDATE Builds
SET Time = '1000'
WHERE Type = 'BUILD_KASBAH' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_LEADERS' AND Value= 1 );


-- Ashurbanipal -- Boost Royal Library
UPDATE Buildings
SET GreatWorkCount = '2'
WHERE Type = 'BUILDING_ROYAL_LIBRARY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_LEADERS' AND Value= 1 );

UPDATE Buildings
SET SpecialistType = 'SPECIALIST_SCIENTIST'
WHERE Type = 'BUILDING_ROYAL_LIBRARY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_NATIONAL_WONDERS' AND Value= 1 );

UPDATE Buildings
SET GreatPeopleRateChange = '1'
WHERE Type = 'BUILDING_ROYAL_LIBRARY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_NATIONAL_WONDERS' AND Value= 1 );

UPDATE Buildings
SET NumCityCostMod = '10'
WHERE Type = 'BUILDING_ROYAL_LIBRARY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_NATIONAL_WONDERS' AND Value= 1 );

UPDATE Building_YieldChangesPerPop
SET Yield = '50'
WHERE BuildingType = 'BUILDING_ROYAL_LIBRARY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_CITY_HAPPINESS' AND Value= 1 );

DELETE FROM Building_DomainFreeExperiencePerGreatWork
WHERE BuildingType = 'BUILDING_ROYAL_LIBRARY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_CITY_HAPPINESS' AND Value= 1 );

UPDATE Buildings
SET ThemingBonusHelp = 'TXT_KEY_BUILDING_ROYAL_LIBRARY_THEMING_BONUS_HELP'
WHERE Type = 'BUILDING_ROYAL_LIBRARY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET Cost = '125'
WHERE Type = 'BUILDING_ROYAL_LIBRARY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET NationalPopRequired = '15'
WHERE Type = 'BUILDING_ROYAL_LIBRARY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_NATIONAL_WONDERS' AND Value= 1 );

UPDATE Buildings
SET BuildingClass = 'BUILDINGCLASS_NATIONAL_COLLEGE'
WHERE Type = 'BUILDING_ROYAL_LIBRARY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_NATIONAL_WONDERS' AND Value= 1 );

UPDATE Civilization_BuildingClassOverrides
SET BuildingClassType = 'BUILDINGCLASS_NATIONAL_COLLEGE'
WHERE CivilizationType = 'CIVILIZATION_ASSYRIA' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_NATIONAL_WONDERS' AND Value= 1 );


-- Enrico - Unique Building (Piazza) -- SEE XML
UPDATE Traits
SET FreeUnitPrereqTech = 'TECH_HORSEBACK_RIDING'
WHERE Type = 'TRAIT_SUPER_CITY_STATE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_LEADERS' AND Value= 1 );

INSERT INTO Trait_PerPuppetGreatPersonRateModifier
	(TraitType, GreatPersonType, Modifier)
VALUES
	('TRAIT_SUPER_CITY_STATE', 'GREATPERSON_MERCHANT', '20');

-- MoV - Town expands borders around it.
DELETE FROM Unit_Builds
WHERE UnitType = 'UNIT_VENETIAN_MERCHANT';

INSERT INTO Unit_Builds
	(UnitType, BuildType)
VALUES
	('UNIT_VENETIAN_MERCHANT', 'BUILD_CUSTOMS_HOUSE_VENICE');

-- Gajah Mada -- Boost Candi, No Isolation Unhappiness

UPDATE Buildings
SET GrantsRandomResourceTerritory = '1'
WHERE Type = 'BUILDING_CANDI' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_LEADERS' AND Value= 1 );

DELETE FROM Building_YieldChangesPerReligion
WHERE BuildingType = 'BUILDING_CANDI' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Traits
SET UniqueLuxuryRequiresNewArea = '0'
WHERE Type = 'TRAIT_SPICE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_LEADERS' AND Value= 1 );

UPDATE Traits
SET UniqueLuxuryQuantity = '1'
WHERE Type = 'TRAIT_SPICE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_LEADERS' AND Value= 1 );

UPDATE Traits
SET UniqueLuxuryCities = '100'
WHERE Type = 'TRAIT_SPICE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_LEADERS' AND Value= 1 );

UPDATE Traits
SET NoConnectionUnhappiness = '1'
WHERE Type = 'TRAIT_SPICE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_LEADERS' AND Value= 1 );


-- Maria I

UPDATE Builds
SET PrereqTech = 'TECH_COMPASS'
WHERE Type = 'BUILD_FEITORIA' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_LEADERS' AND Value= 1 );

UPDATE Improvements
SET GrantsVisionXTiles = '2'
WHERE Type = 'IMPROVEMENT_FEITORIA' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_LEADERS' AND Value= 1 );

UPDATE Improvements
SET OnlyCityStateTerritory = '0'
WHERE Type = 'IMPROVEMENT_FEITORIA' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_LEADERS' AND Value= 1 );

UPDATE Improvements
SET NoTwoAdjacent = '1'
WHERE Type = 'IMPROVEMENT_FEITORIA' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_LEADERS' AND Value= 1 );

UPDATE Improvements
SET DefenseModifier = '25'
WHERE Type = 'IMPROVEMENT_FEITORIA' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_LEADERS' AND Value= 1 );

UPDATE Traits
SET TradeRouteResourceModifier = '0'
WHERE Type = 'TRAIT_EXTRA_TRADE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_LEADERS' AND Value= 1 );


-- Shoshone


-- Casimir III -- Ducal Stable +1 Production
UPDATE Buildings
SET PrereqTech = 'TECH_CHIVALRY'
WHERE Type = 'BUILDING_DUCAL_STABLE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Building_YieldChanges
SET Yield = '3'
WHERE BuildingType = 'BUILDING_DUCAL_STABLE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Building_ResourceYieldChanges
SET Yield = '3'
WHERE BuildingType = 'BUILDING_DUCAL_STABLE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Building_UnitCombatProductionModifiers
SET Modifier = '25'
WHERE BuildingType = 'BUILDING_DUCAL_STABLE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

-- Pedro -- Improve Brazilwood Camp, increase all GP production during GA

UPDATE Traits
SET GoldenAgeTourismModifier = '0'
WHERE Type = 'TRAIT_CARNIVAL' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_LEADERS' AND Value= 1 );

UPDATE Traits
SET GoldenAgeGreatArtistRateModifier = '0'
WHERE Type = 'TRAIT_CARNIVAL' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_LEADERS' AND Value= 1 );

UPDATE Traits
SET GoldenAgeGreatMusicianRateModifier = '0'
WHERE Type = 'TRAIT_CARNIVAL' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_LEADERS' AND Value= 1 );

UPDATE Traits
SET GoldenAgeGreatWriterRateModifier = '0'
WHERE Type = 'TRAIT_CARNIVAL' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_LEADERS' AND Value= 1 );

UPDATE Traits
SET WLTKDCultureBoost = '20'
WHERE Type = 'TRAIT_CARNIVAL' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_LEADERS' AND Value= 1 );

UPDATE Traits
SET WLTKDFromGATurns = '10'
WHERE Type = 'TRAIT_CARNIVAL' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_LEADERS' AND Value= 1 );

UPDATE Traits
SET GAUnhappinesNeedMod = '-50'
WHERE Type = 'TRAIT_CARNIVAL' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_LEADERS' AND Value= 1 );

UPDATE Builds
SET PrereqTech = 'TECH_CALENDAR'
WHERE Type = 'BUILD_BRAZILWOOD_CAMP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_LEADERS' AND Value= 1 );

INSERT INTO Units
	(Class, Type, Combat, Cost, FaithCost, WorkRate, RequiresFaithPurchaseEnabled, Moves, PrereqTech, ObsoleteTech, CombatClass, Domain, NoBadGoodies, DefaultUnitAI, Description, Civilopedia, Strategy, Help, Pillage, MilitarySupport, GoodyHutUpgradeUnitClass, MilitaryProduction, AdvancedStartCost, XPValueAttack, XPValueDefense, UnitArtInfo, UnitFlagAtlas, UnitFlagIconOffset, PortraitIndex, IconAtlas, MoveRate)
VALUES
	('UNITCLASS_EXPLORER', 'UNIT_BANDEIRANTES', 19, 180, 200, 100, 1, 4, 'TECH_COMPASS', 'TECH_ROCKETRY', 'UNITCOMBAT_RECON', 'DOMAIN_LAND', 1, 'UNITAI_EXPLORE', 'TXT_KEY_UNIT_BANDEIRANTES', 'TXT_KEY_UNIT_BANDEIRANTES_TEXT', 'TXT_KEY_UNIT_BANDEIRANTES_STRATEGY', 'TXT_KEY_UNIT_BANDEIRANTES_HELP', 1, 1, 'UNITCLASS_ZEPPELIN', 1, 30, 3, 3, 'ART_DEF_UNIT_BANDEIRANTES', 'BANDEIRANTES_FLAG_ATLAS', 0, 4, 'COMMUNITY_2_ATLAS', 'BIPED');

INSERT INTO UnitGameplay2DScripts
	(UnitType, SelectionSound, FirstSelectionSound)
VALUES
	('UNIT_BANDEIRANTES', 'AS2D_SELECT_SCOUT', 'AS2D_BIRTH_SCOUT');

INSERT INTO Unit_Flavors
	(UnitType, FlavorType, Flavor)
VALUES
	('UNIT_BANDEIRANTES', 'FLAVOR_EXPANSION', 35),
	('UNIT_BANDEIRANTES', 'FLAVOR_OFFENSE', 20);
-- Zulu -- Ikanda gives promotions to all melee infantry

UPDATE Traits
SET GreatGeneralExtraBonus = '10'
WHERE Type = 'TRAIT_BUFFALO_HORNS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_LEADERS' AND Value= 1 );

INSERT INTO Trait_MaintenanceModifierUnitCombats
	(TraitType, UnitCombatType, MaintenanceModifier)
VALUES
	('TRAIT_BUFFALO_HORNS', 'UNITCOMBAT_GUN', -50);

-- New BNW Leader Data and Yields

-- New Improvement

INSERT INTO Improvements
	(Type, Description, Civilopedia, Help, ArtDefineTag, SpecificCivRequired, CivilizationType, RequiresFlatlands, NoTwoAdjacent, PortraitIndex, PillageGold, DefenseModifier, NearbyEnemyDamage, IconAtlas)
VALUES
	('IMPROVEMENT_ENCAMPMENT_SHOSHONE', 'TXT_KEY_IMPROVEMENT_ENCAMPMENT_SHOSHONE', 'TXT_KEY_CIV5_IMPROVEMENTS_ENCAMPMENT_SHOSHONE_TEXT', 'TXT_KEY_CIV5_IMPROVEMENTS_ENCAMPMENT_SHOSHONE_HELP', 'ART_DEF_IMPROVEMENT_TIPIS', 1, 'CIVILIZATION_SHOSHONE', 1, 1, 0, 20, 15, 5, 'TERRAIN_IMPROVEMENT_ENCAMPMENT');

INSERT INTO Builds
	(Type, Time, ImprovementType, PrereqTech, Description, Help, Recommendation, EntityEvent, HotKey, OrderPriority, IconIndex, IconAtlas)
VALUES
	('BUILD_ENCAMPMENT_SHOSHONE', 700, 'IMPROVEMENT_ENCAMPMENT_SHOSHONE', 'TECH_ARCHERY', 'TXT_KEY_BUILD_ENCAMPMENT_SHOSHONE', 'TXT_KEY_BUILD_ENCAMPMENT_SHOSHONE_HELP', 'TXT_KEY_BUILD_ENCAMPMENT_SHOSHONE_REC', 'ENTITY_EVENT_BUILD', 'KB_E', 1, 0, 'UNIT_ACTION_ENCAMPMENT');

INSERT INTO Improvements
	(Type, Description, Civilopedia, ArtDefineTag, BuildableOnResources, PillageGold, CreatedByGreatPerson, CultureBombRadius, InAdjacentFriendly, PortraitIndex, IconAtlas)
VALUES
	('IMPROVEMENT_CUSTOMS_HOUSE_VENICE', 'TXT_KEY_IMPROVEMENT_CUSTOMS_HOUSE_VENICE', 'TXT_KEY_CIV5_IMPROVEMENT_CUSTOMS_HOUSE_VENICE_TEXT', 'ART_DEF_IMPROVEMENT_CUSTOMS_HOUSE', 1, 20, 1, 1, 1, 33, 'TERRAIN_ATLAS');

INSERT INTO Builds
	(Type, ImprovementType, Description, Help, Kill, EntityEvent, HotKey, OrderPriority, IconIndex, IconAtlas)
VALUES
	('BUILD_CUSTOMS_HOUSE_VENICE', 'IMPROVEMENT_CUSTOMS_HOUSE_VENICE', 'TXT_KEY_BUILD_CUSTOMS_HOUSE_VENICE', 'TXT_KEY_BUILD_CONSUMED_HELP', 1, 'ENTITY_EVENT_MINE', 'KB_H', 96, 57, 'UNIT_ACTION_ATLAS');

INSERT INTO Trait_YieldChangesPerTradePartner
	(TraitType, YieldType, Yield)
VALUES
	('TRAIT_GATEWAY_AFRICA', 'YIELD_GOLDEN_AGE_POINTS', 3);

INSERT INTO Improvement_Yields
	(ImprovementType, YieldType, Yield)
VALUES
	('IMPROVEMENT_KASBAH', 'YIELD_CULTURE', 2),
	('IMPROVEMENT_BRAZILWOOD_CAMP', 'YIELD_CULTURE', 1),
	('IMPROVEMENT_ENCAMPMENT_SHOSHONE', 'YIELD_FOOD', 2),
	('IMPROVEMENT_ENCAMPMENT_SHOSHONE', 'YIELD_PRODUCTION', 1),
	('IMPROVEMENT_ENCAMPMENT_SHOSHONE', 'YIELD_CULTURE', 1),
	('IMPROVEMENT_CUSTOMS_HOUSE_VENICE', 'YIELD_FOOD', 4),
	('IMPROVEMENT_CUSTOMS_HOUSE_VENICE', 'YIELD_GOLD', 4),
	('IMPROVEMENT_CUSTOMS_HOUSE_VENICE', 'YIELD_CULTURE', 3);

INSERT INTO Building_WLTKDYieldMod
	(BuildingType, YieldType, Yield)
VALUES
	('BUILDING_CANDI', 'YIELD_FAITH', 20),
	('BUILDING_CANDI', 'YIELD_CULTURE', 20);

INSERT INTO Improvement_ValidTerrains
	(ImprovementType, TerrainType)
VALUES
	('IMPROVEMENT_KASBAH', 'TERRAIN_GRASS'),
	('IMPROVEMENT_KASBAH', 'TERRAIN_PLAINS'),
	('IMPROVEMENT_KASBAH', 'TERRAIN_DESERT'),
	('IMPROVEMENT_KASBAH', 'TERRAIN_TUNDRA'),
	('IMPROVEMENT_KASBAH', 'TERRAIN_SNOW'),
	('IMPROVEMENT_CUSTOMS_HOUSE_VENICE', 'TERRAIN_GRASS'),
	('IMPROVEMENT_CUSTOMS_HOUSE_VENICE', 'TERRAIN_PLAINS'),
	('IMPROVEMENT_CUSTOMS_HOUSE_VENICE', 'TERRAIN_DESERT'),
	('IMPROVEMENT_CUSTOMS_HOUSE_VENICE', 'TERRAIN_TUNDRA'),
	('IMPROVEMENT_CUSTOMS_HOUSE_VENICE', 'TERRAIN_SNOW'),
	('IMPROVEMENT_ENCAMPMENT_SHOSHONE', 'TERRAIN_GRASS'),
	('IMPROVEMENT_ENCAMPMENT_SHOSHONE', 'TERRAIN_PLAINS'),
	('IMPROVEMENT_ENCAMPMENT_SHOSHONE', 'TERRAIN_TUNDRA'),
	('IMPROVEMENT_ENCAMPMENT_SHOSHONE', 'TERRAIN_SNOW'),
	('IMPROVEMENT_ENCAMPMENT_SHOSHONE', 'TERRAIN_DESERT');

INSERT INTO Building_DomainFreeExperiencePerGreatWorkGlobal
	(BuildingType, DomainType, Experience)
VALUES
	('BUILDING_ROYAL_LIBRARY', 'DOMAIN_LAND', 5),
	('BUILDING_ROYAL_LIBRARY', 'DOMAIN_SEA', 5),
	('BUILDING_ROYAL_LIBRARY', 'DOMAIN_AIR', 5);

INSERT INTO Building_ClassesNeededInCity
	(BuildingType, BuildingClassType)
VALUES
	('BUILDING_ROYAL_LIBRARY', 'BUILDINGCLASS_LIBRARY');

INSERT INTO Trait_GreatWorkYieldChanges
	(TraitType, YieldType, Yield)
VALUES
	('TRAIT_SLAYER_OF_TIAMAT', 'YIELD_SCIENCE', 2);

INSERT INTO Trait_GAPToYield
	(TraitType, YieldType, Yield)
VALUES
	('TRAIT_CARNIVAL', 'YIELD_TOURISM', 40),
	('TRAIT_CARNIVAL', 'YIELD_GOLD', 40);

INSERT INTO Building_YieldChanges
	(BuildingType, YieldType, Yield)
VALUES
	('BUILDING_ROYAL_LIBRARY', 'YIELD_SCIENCE', 3),
	('BUILDING_DUCAL_STABLE', 'YIELD_PRODUCTION', 3),
	('BUILDING_IKANDA', 'YIELD_SCIENCE', 2),
	('BUILDING_CANDI', 'YIELD_CULTURE', 2),
	('BUILDING_PIAZZA_SAN_MARCO', 'YIELD_CULTURE', 1),
	('BUILDING_PIAZZA_SAN_MARCO', 'YIELD_GOLD', 2),
	('BUILDING_PIAZZA_SAN_MARCO', 'YIELD_SCIENCE', 1),
	('BUILDING_PIAZZA_SAN_MARCO', 'YIELD_PRODUCTION', 2),
	('BUILDING_PIAZZA_SAN_MARCO', 'YIELD_FOOD', 2);

INSERT INTO Building_YieldModifiers
	(BuildingType, YieldType, Yield)
VALUES
	('BUILDING_VENETIAN_ARSENALE', 'YIELD_PRODUCTION', 15);

INSERT INTO Building_ThemingBonuses
	(BuildingType, Description, Bonus, RequiresAnyButOwner, AIPriority)
VALUES
	('BUILDING_ROYAL_LIBRARY', 'TXT_KEY_THEMING_BONUS_ROYAL_LIBRARY', 2, 1, 2);

INSERT INTO Building_BuildingClassYieldChanges
	(BuildingType, BuildingClassType, YieldType, YieldChange)
VALUES
	('BUILDING_ROYAL_LIBRARY', 'BUILDINGCLASS_LIBRARY', 'YIELD_SCIENCE', 2);

INSERT INTO Improvement_TechYieldChanges
	(ImprovementType, TechType, YieldType, Yield)
VALUES
	('IMPROVEMENT_KASBAH', 'TECH_ARCHITECTURE', 'YIELD_CULTURE', 1),
	('IMPROVEMENT_KASBAH', 'TECH_ARCHITECTURE', 'YIELD_GOLD', 1),
	('IMPROVEMENT_KASBAH', 'TECH_RADIO', 'YIELD_CULTURE', 1),
	('IMPROVEMENT_CUSTOMS_HOUSE_VENICE', 'TECH_GUILDS', 'YIELD_GOLD', 2),
	('IMPROVEMENT_CUSTOMS_HOUSE_VENICE', 'TECH_ECONOMICS', 'YIELD_CULTURE', 2),
	('IMPROVEMENT_CUSTOMS_HOUSE_VENICE', 'TECH_FERTILIZER', 'YIELD_FOOD', 2),
	('IMPROVEMENT_ENCAMPMENT_SHOSHONE', 'TECH_RIFLING', 'YIELD_CULTURE', 1),
	('IMPROVEMENT_ENCAMPMENT_SHOSHONE', 'TECH_RIFLING', 'YIELD_FOOD', 1),
	('IMPROVEMENT_ENCAMPMENT_SHOSHONE', 'TECH_ECOLOGY', 'YIELD_PRODUCTION', 1),
	('IMPROVEMENT_ENCAMPMENT_SHOSHONE', 'TECH_ECOLOGY', 'YIELD_SCIENCE', 1);

INSERT INTO Building_ResourceYieldChanges
	(BuildingType, ResourceType, YieldType, Yield)
VALUES
	('BUILDING_CANDI', 'RESOURCE_CITRUS', 'YIELD_GOLD', 1),
	('BUILDING_CANDI', 'RESOURCE_CITRUS', 'YIELD_FOOD', 1),
	('BUILDING_CANDI', 'RESOURCE_COCOA', 'YIELD_GOLD', 1),
	('BUILDING_CANDI', 'RESOURCE_COCOA', 'YIELD_FOOD', 1);

INSERT INTO Building_Flavors
	(BuildingType, FlavorType, Flavor)
VALUES
	('BUILDING_CANDI', 'FLAVOR_HAPPINESS', 50),
	('BUILDING_PIAZZA_SAN_MARCO', 'FLAVOR_GREAT_PEOPLE', 100),
	('BUILDING_RIALTO_DISTRICT', 'FLAVOR_GOLD', 30),
	('BUILDING_RIALTO_DISTRICT', 'FLAVOR_DIPLOMACY', 30),
	('BUILDING_VENETIAN_ARSENALE', 'FLAVOR_NAVAL', 30),
	('BUILDING_VENETIAN_ARSENALE', 'FLAVOR_PRODUCTION', 30),
	('BUILDING_MURANO_GLASSWORKS', 'FLAVOR_CULTURE', 30),
	('BUILDING_MURANO_GLASSWORKS', 'FLAVOR_GREAT_PEOPLE', 30);

INSERT INTO Trait_YieldFromRouteMovement
	(TraitType, YieldType, Yield)
VALUES
	('TRAIT_EXTRA_TRADE', 'YIELD_GREAT_ADMIRAL_POINTS', 3),
	('TRAIT_EXTRA_TRADE', 'YIELD_GREAT_GENERAL_POINTS', 3),
	('TRAIT_EXTRA_TRADE', 'YIELD_SCIENCE', 3),
	('TRAIT_EXTRA_TRADE', 'YIELD_GOLD', 3);

INSERT INTO UnitPromotions_UnitCombats
	(PromotionType, UnitCombatType)
VALUES
	('PROMOTION_BUFFALO_HORNS', 'UNITCOMBAT_GUN'),
	('PROMOTION_BUFFALO_CHEST', 'UNITCOMBAT_GUN'),
	('PROMOTION_BUFFALO_LOINS', 'UNITCOMBAT_GUN');

INSERT INTO Civilization_FreeUnits
	(CivilizationType, UnitClassType, Count, UnitAIType)
VALUES
	('CIVILIZATION_SHOSHONE', 'UNITCLASS_SCOUT', 1, 'UNITAI_EXPLORE');

INSERT INTO Civilization_BuildingClassOverrides
	(CivilizationType, BuildingClassType, BuildingType)
VALUES
	('CIVILIZATION_VENICE', 'BUILDINGCLASS_NATIONAL_EPIC', 'BUILDING_PIAZZA_SAN_MARCO');

INSERT INTO Building_ClassesNeededInCity
	(BuildingType, BuildingClassType)
VALUES
	('BUILDING_PIAZZA_SAN_MARCO', 'BUILDINGCLASS_PALACE'),
	('BUILDING_RIALTO_DISTRICT', 'BUILDINGCLASS_NATIONAL_EPIC'),
	('BUILDING_VENETIAN_ARSENALE', 'BUILDINGCLASS_NATIONAL_EPIC'),
	('BUILDING_MURANO_GLASSWORKS', 'BUILDINGCLASS_NATIONAL_EPIC');

INSERT INTO Building_ImprovementYieldChanges
	(BuildingType, ImprovementType, YieldType, Yield)
VALUES
	('BUILDING_MURANO_GLASSWORKS', 'IMPROVEMENT_ACADEMY', 'YIELD_TOURISM', 2),
	('BUILDING_MURANO_GLASSWORKS', 'IMPROVEMENT_CUSTOMS_HOUSE', 'YIELD_TOURISM', 2),
	('BUILDING_MURANO_GLASSWORKS', 'IMPROVEMENT_CUSTOMS_HOUSE_VENICE', 'YIELD_TOURISM', 2),
	('BUILDING_MURANO_GLASSWORKS', 'IMPROVEMENT_MANUFACTORY', 'YIELD_TOURISM', 2),
	('BUILDING_MURANO_GLASSWORKS', 'IMPROVEMENT_CITADEL', 'YIELD_TOURISM', 2),
	('BUILDING_MURANO_GLASSWORKS', 'IMPROVEMENT_ACADEMY', 'YIELD_FOOD', 2),
	('BUILDING_MURANO_GLASSWORKS', 'IMPROVEMENT_CUSTOMS_HOUSE', 'YIELD_FOOD', 2),
	('BUILDING_MURANO_GLASSWORKS', 'IMPROVEMENT_CUSTOMS_HOUSE_VENICE', 'YIELD_FOOD', 2),
	('BUILDING_MURANO_GLASSWORKS', 'IMPROVEMENT_MANUFACTORY', 'YIELD_FOOD', 2),
	('BUILDING_MURANO_GLASSWORKS', 'IMPROVEMENT_CITADEL', 'YIELD_FOOD', 2),
	('BUILDING_MURANO_GLASSWORKS', 'IMPROVEMENT_TRADING_POST', 'YIELD_FOOD', 2),
	('BUILDING_MURANO_GLASSWORKS', 'IMPROVEMENT_TRADING_POST', 'YIELD_TOURISM', 2),
	('BUILDING_MURANO_GLASSWORKS', 'IMPROVEMENT_HOLY_SITE', 'YIELD_FOOD', 2),
	('BUILDING_MURANO_GLASSWORKS', 'IMPROVEMENT_HOLY_SITE', 'YIELD_TOURISM', 2);

INSERT INTO Building_HurryModifiers
	(BuildingType, HurryType, HurryCostModifier)
VALUES
	('BUILDING_RIALTO_DISTRICT', 'HURRY_GOLD', -10);

INSERT INTO Building_ThemingBonuses
	(BuildingType, Description, Bonus, RequiresOwner, AIPriority)
VALUES
	('BUILDING_MURANO_GLASSWORKS', 'TXT_KEY_THEMING_BONUS_MURANO_GLASSWORKS', 4, 1, 4);

INSERT INTO Building_ThemingYieldBonus
	(BuildingType, YieldType, Yield)
VALUES
	('BUILDING_MURANO_GLASSWORKS', 'YIELD_SCIENCE', 5);

INSERT INTO BuildFeatures
	(BuildType, FeatureType, PrereqTech, Time, Production, Remove)
VALUES
	('BUILD_ENCAMPMENT_SHOSHONE', 'FEATURE_JUNGLE', 'TECH_IRON_WORKING', 700, 15, 1),
	('BUILD_ENCAMPMENT_SHOSHONE', 'FEATURE_FOREST', 'TECH_BRONZE_WORKING', 400, 20, 1),
	('BUILD_ENCAMPMENT_SHOSHONE', 'FEATURE_MARSH', 'TECH_MACHINERY', 400, 0, 1);

INSERT INTO Unit_Builds
	(UnitType, BuildType)
VALUES
	('UNIT_WORKER', 'BUILD_ENCAMPMENT_SHOSHONE');