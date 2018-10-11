-- Captain Stonehelm 50309
UPDATE `creature_template_addon` SET `mount` = 29258 WHERE  `entry` = 50309;
UPDATE `creature` SET `equipment_id` = 1 WHERE  `guid` = 307505;

-- Master Tinker Trini 50308
UPDATE `creature_template_addon` SET `mount` = 28571 WHERE  `entry` = 50308;
UPDATE `creature` SET `equipment_id` = 1 WHERE  `guid` = 307507;

-- Falstad Wildhammer 42131
UPDATE `creature` SET `equipment_id` = 1 WHERE  `id` = 42131;

-- Muradin Bronzebeard 42928
UPDATE `creature` SET `equipment_id` = 1 WHERE  `id` = 42928;

-- Honor Guard Dunstad 52321
UPDATE `creature` SET `equipment_id` = 1 WHERE  `id` = 52321;

-- Dark Iron Guard42147
UPDATE `creature` SET `equipment_id` = 1 WHERE  `id` = 42147;

-- Ambassador Slaghammer 42146
UPDATE `creature` SET `equipment_id` = 1 WHERE  `id` = 42146;

-- Fimble Finespindle 5127
UPDATE `creature_template_addon` SET `emote` = 69 WHERE  `entry` = 5127;

-- Jormund Stonebrow 5153
UPDATE `creature_template_addon` SET `emote` = 69 WHERE  `entry` = 5153;

-- Golnir Bouldertoe 4256
UPDATE `gossip_menu_option` SET `OptionType` = 3, `OptionNpcFlag` = 128 WHERE  `MenuID` = 4359 AND `OptionID` = 0;

-- Daryl Riknussun 5159
UPDATE `gossip_menu_option` SET `OptionBroadcastTextID` = 8349 WHERE  `MenuID` = 4748 AND `OptionID` = 0;

-- Erdunor Whitespire 47582
UPDATE `creature` SET `equipment_id` = 1 WHERE  `id` = 47582;

UPDATE `creature_template` SET `AIName` = 'SmartAI', `ScriptName` = '' WHERE  `entry` = 47582;

DELETE FROM `smart_scripts` WHERE `entryorguid` = 47582 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(47582, 0, 0, 0, 1, 0, 100, 0, 4000, 8000, 4000, 8000, 0, 10, 1, 273, 6, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Erdunor Whitespire - Out of Combat - Play Random Emote (1, 273, 6)');

-- Gimble Thistlefuzz 5157
UPDATE `creature_template` SET `AIName` = 'SmartAI', `ScriptName` = '' WHERE  `entry` = 5157;

DELETE FROM `smart_scripts` WHERE `entryorguid` = 5157 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(5157, 0, 0, 0, 1, 0, 100, 0, 4000, 8000, 4000, 8000, 0, 10, 1, 273, 6, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Gimble Thistlefuzz - Out of Combat - Play Random Emote (1, 273, 6)');

-- Bretta Goldfury 5123
UPDATE `creature` SET `equipment_id` = 0 WHERE  `id` = 5123;

-- Dolkin Craghelm 5125
DELETE FROM `creature` WHERE `id` = 5125;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES 
(10853, 5125, 0, 0, 0, 1, 1, 0, 0, 0, 1, -5032.96, -1139.38, 505.396, 3.4383, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Olthran Craghelm 5126
DELETE FROM `creature` WHERE `id` = 5126;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES 
(10852, 5126, 0, 0, 0, 1, 1, 0, 0, 0, 1, -5030.41, -1147.3, 512.063, 2.04204, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Steeg Haskell 51495
DELETE FROM `creature` WHERE `id` = 51495;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES 
(10851, 51495, 0, 0, 0, 1, 1, 0, 0, 0, 0, -5021.97, -1000.65, 503.964, 0.890118, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Larkin Thunderbrew 27478
UPDATE `creature` SET `equipment_id` = 1 WHERE  `id` = 27478;

-- Pyromancer Scorchbrew 50716
UPDATE `creature` SET `equipment_id` = 1 WHERE  `id` = 50716;
UPDATE `creature_template` SET `AIName` = 'SmartAI', `ScriptName` = ''  WHERE  `entry` = 50716;

DELETE FROM `smart_scripts` WHERE `entryorguid` = 50716 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(50716, 0, 0, 0, 1, 0, 100, 0, 4000, 8000, 4000, 8000, 0, 10, 1, 273, 6, 5, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Pyromancer Scorchbrew - Out of Combat - Play Random Emote (1, 273, 6)');

-- Flarna Flametongue 50717
UPDATE `creature` SET `equipment_id` = 1 WHERE  `id` = 50717;
UPDATE `creature_template` SET `AIName` = 'SmartAI', `ScriptName` = '', `gossip_menu_id` = 12521 WHERE  `entry` = 50717;

DELETE FROM `smart_scripts` WHERE `entryorguid` = 50717 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(50717, 0, 0, 0, 1, 0, 100, 0, 4000, 8000, 4000, 8000, 0, 10, 1, 273, 6, 5, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Flarna Flametongue - Out of Combat - Play Random Emote (1, 273, 6)');

-- Lainda Gemgold 50720
UPDATE `creature` SET `equipment_id` = 1 WHERE  `id` = 50720;
UPDATE `creature_template` SET `AIName` = 'SmartAI', `ScriptName` = '', `gossip_menu_id` = 12521 WHERE  `entry` = 50720;

DELETE FROM `smart_scripts` WHERE `entryorguid` = 50720 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(50720, 0, 0, 0, 1, 0, 100, 0, 4000, 8000, 4000, 8000, 0, 10, 1, 273, 6, 5, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Lainda Gemgold - Out of Combat - Play Random Emote (1, 273, 6)');

-- Garel Redrock 16070
UPDATE `creature_template` SET `type_flags` = 134221824 WHERE  `entry` = 16070;

DELETE FROM `creature` WHERE `id` = 16070;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES 
(10850, 16070, 0, 0, 0, 1, 1, 0, 0, 0, 0, -4641.59, -1106.96, 501.389, 1.11701, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0);

DELETE FROM `gossip_menu_option` WHERE `MenuID` = 7034;
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionBroadcastTextID`, `OptionType`, `OptionNpcFlag`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextID`, `VerifiedBuild`) VALUES 
(7034, 0, 0, 'I would like to enter the secret code to receive my Murloc pet.', 11765, 1, 1, 0, 0, 1, 0, '', 0, 0);

-- Gurky 16069
DELETE FROM `creature` WHERE `id` = 16069;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES 
(10848, 16069, 0, 0, 0, 1, 1, 0, 0, 0, 0, -4643.21, -1105.58, 501.39, 0.820305, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10849, 16069, 1, 0, 0, 1, 1, 0, 0, 0, 0, 1981.99, -4664.74, 27.9045, 0.628318, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Darba the Crone 50729
UPDATE `creature` SET `equipment_id` = 1 WHERE  `id` = 50729;
UPDATE `creature_template` SET `AIName` = 'SmartAI', `ScriptName` = '', `gossip_menu_id` = 4566 WHERE  `entry` = 50729;

DELETE FROM `smart_scripts` WHERE `entryorguid` = 50729 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(50729, 0, 0, 0, 1, 0, 100, 0, 4000, 8000, 4000, 8000, 0, 10, 1, 273, 6, 5, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Darba the Crone - Out of Combat - Play Random Emote (1, 273, 6)');

-- Larn Caverndeep 50732
UPDATE `creature` SET `equipment_id` = 1 WHERE  `id` = 50732;
UPDATE `creature_template` SET `AIName` = 'SmartAI', `ScriptName` = '', `gossip_menu_id` = 4566 WHERE  `entry` = 50732;

DELETE FROM `smart_scripts` WHERE `entryorguid` = 50732 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(50732, 0, 0, 0, 1, 0, 100, 0, 4000, 8000, 4000, 8000, 0, 10, 1, 273, 6, 5, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Larn Caverndeep - Out of Combat - Play Random Emote (1, 273, 6)');

-- Keric Smolderblade 50723
UPDATE `creature` SET `equipment_id` = 1 WHERE  `id` = 50723;
UPDATE `creature_template` SET `AIName` = 'SmartAI', `ScriptName` = '', `gossip_menu_id` = 4566 WHERE  `entry` = 50723;

DELETE FROM `smart_scripts` WHERE `entryorguid` = 50723 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(50723, 0, 0, 0, 1, 0, 100, 0, 4000, 8000, 4000, 8000, 0, 10, 1, 273, 6, 5, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Keric Smolderblade - Out of Combat - Play Random Emote (1, 273, 6)');

-- Thistleheart 5171
UPDATE `creature_template` SET `AIName` = 'SmartAI', `ScriptName` = '' WHERE  `entry` = 5171;

DELETE FROM `smart_scripts` WHERE `entryorguid` = 5171 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(5171, 0, 0, 0, 1, 0, 100, 0, 4000, 8000, 4000, 8000, 0, 10, 1, 273, 6, 5, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Thistleheart - Out of Combat - Play Random Emote (1, 273, 6)');

-- Ormyr Flinteye 5166
UPDATE `creature_template` SET `gossip_menu_id` = 4561 WHERE  `entry` = 5166;

-- Soolie Berryfizz 5178
DELETE FROM `creature` WHERE `id` = 5178;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES 
(10847, 5178, 0, 0, 0, 1, 1, 0, 0, 0, 1, -4856.88, -1237.26, 501.807, 0.523599, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Bengus Deepforge 4258
UPDATE `creature_template_addon` SET `emote` = 233 WHERE  `entry` = 4258;

-- Rotgath Stonebeard 10276
UPDATE `creature_template_addon` SET `emote` = 233 WHERE  `entry` = 10276;

-- Ironforge Guard 5595
DELETE FROM `gossip_menu_option` WHERE `MenuID` = 2121;
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionBroadcastTextID`, `OptionType`, `OptionNpcFlag`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextID`, `VerifiedBuild`) VALUES 
(2121, 0, 0, 'Auction House', 5316, 1, 1, 2321, 50, 0, 0, '', 0, 0),
(2121, 1, 0, 'Bank of Ironforge', 5078, 1, 1, 2141, 51, 0, 0, '', 0, 0),
(2121, 2, 0, 'Deeprun Tram', 6328, 1, 1, 3082, 52, 0, 0, '', 0, 0),
(2121, 3, 0, 'Gryphon Master', 6908, 1, 1, 2142, 53, 0, 0, '', 0, 0),
(2121, 4, 0, 'Guild Master & Vendor', 6909, 1, 1, 2143, 54, 0, 0, '', 0, 0),
(2121, 5, 0, 'The Inn', 6633, 1, 1, 2145, 55, 0, 0, '', 0, 0),
(2121, 6, 0, 'Mailbox', 6397, 1, 1, 2146, 56, 0, 0, '', 0, 0),
(2121, 7, 0, 'Stable Master', 45383, 1, 1, 4927, 57, 0, 0, '', 0, 0),
(2121, 8, 0, 'Battlemaster', 10424, 1, 1, 8220, 59, 0, 0, '', 0, 0),
(2121, 9, 0, 'Barber', 45376, 1, 1, 10014, 60, 0, 0, '', 0, 0),
(2121, 10, 0, 'Class Trainer', 6722, 1, 1, 2144, 0, 0, 0, '', 0, 0),
(2121, 11, 0, 'Profession Trainer', 6912, 1, 1, 2168, 0, 0, 0, '', 0, 0);

DELETE FROM `gossip_menu_option` WHERE `MenuID` = 2144;
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionBroadcastTextID`, `OptionType`, `OptionNpcFlag`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextID`, `VerifiedBuild`) VALUES 
(2144, 0, 0, 'Druid', 45409, 1, 1, 12756, 455, 0, 0, '', 0, 0),
(2144, 1, 0, 'Hunter', 50546, 1, 1, 2147, 61, 0, 0, '', 0, 0),
(2144, 2, 0, 'Mage', 45404, 1, 1, 2148, 62, 0, 0, '', 0, 0),
(2144, 3, 0, 'Paladin', 48028, 1, 1, 2150, 62, 0, 0, '', 0, 0),
(2144, 4, 0, 'Priest', 45405, 1, 1, 2149, 62, 0, 0, '', 0, 0),
(2144, 5, 0, 'Rogue', 45406, 1, 1, 2151, 63, 0, 0, '', 0, 0),
(2144, 6, 0, 'Warlock', 45407, 1, 1, 2152, 64, 0, 0, '', 0, 0),
(2144, 7, 0, 'Warrior', 45408, 1, 1, 2153, 61, 0, 0, '', 0, 0),
(2144, 8, 0, 'Shaman', 45410, 1, 1, 8643, 65, 0, 0, '', 0, 0);

DELETE FROM `gossip_menu_option` WHERE `MenuID` = 2168;
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionBroadcastTextID`, `OptionType`, `OptionNpcFlag`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextID`, `VerifiedBuild`) VALUES 
(2168, 0, 0, 'Alchemy', 52058, 1, 1, 2161, 66, 0, 0, '', 0, 0),
(2168, 1, 0, 'Archaeology', 44649, 1, 1, 12306, 456, 0, 0, '', 0, 0),
(2168, 2, 0, 'Blacksmithing', 51346, 1, 1, 2162, 67, 0, 0, '', 0, 0),
(2168, 3, 0, 'Cooking', 45763, 1, 1, 2163, 68, 0, 0, '', 0, 0),
(2168, 4, 0, 'Enchanting', 52063, 1, 1, 2164, 69, 0, 0, '', 0, 0),
(2168, 5, 0, 'Engineering', 51347, 1, 1, 2165, 401, 0, 0, '', 0, 0),
(2168, 6, 0, 'First Aid', 52066, 1, 1, 2166, 70, 0, 0, '', 0, 0),
(2168, 7, 0, 'Fishing', 45767, 1, 1, 2167, 71, 0, 0, '', 0, 0),
(2168, 8, 0, 'Herbalism', 45768, 1, 1, 2169, 70, 0, 0, '', 0, 0),
(2168, 9, 0, 'Inscription', 48811, 1, 1, 10013, 72, 0, 0, '', 0, 0),
(2168, 10, 0, 'Jewelcrafting', 45758, 1, 1, 12773, 74, 0, 0, '', 0, 0),
(2168, 11, 0, 'Leatherworking', 52071, 1, 1, 2170, 73, 0, 0, '', 0, 0),
(2168, 12, 0, 'Mining', 51348, 1, 1, 2172, 74, 0, 0, '', 0, 0),
(2168, 13, 0, 'Skinning', 52076, 1, 1, 2173, 73, 0, 0, '', 0, 0),
(2168, 14, 0, 'Tailoring', 52077, 1, 1, 2175, 75, 0, 0, '', 0, 0);

-- Arrest the Ambassador Credit 42152
UPDATE `creature_template` SET `flags_extra` = 130 WHERE  `entry` = 42152;

-- Jubahl Corpseseeker 6382
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` IN (14, 15) AND `SourceGroup` = 12670;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(14, 12670, 12549, 0, 0, 15, 0, 1279, 0, 0, 0, 0, 0, '', ''),
(14, 12670, 17816, 0, 0, 15, 0, 256, 0, 0, 0, 0, 0, '', ''),
(15, 12670, 0, 0, 0, 15, 0, 256, 0, 0, 0, 0, 0, '', ''),
(15, 12670, 1, 0, 0, 15, 0, 256, 0, 0, 0, 0, 0, '', ''),
(15, 12670, 2, 0, 0, 15, 0, 256, 0, 0, 0, 0, 0, '', ''),
(15, 12670, 3, 0, 0, 15, 0, 256, 0, 0, 0, 0, 0, '', '');

DELETE FROM `gossip_menu_option` WHERE `MenuID` = 12670;
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionBroadcastTextID`, `OptionType`, `OptionNpcFlag`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextID`, `VerifiedBuild`) VALUES 
(12670, 0, 0, 'Abandon Imp', 50696, 1, 1, 0, 0, 0, 500000, 'Are you sure you want to pay to abandon your minion?', 0, 0),
(12670, 1, 0, 'Abandon Voidwalker', 50697, 1, 1, 0, 0, 0, 500000, 'Are you sure you want to pay to abandon your minion?', 0, 0),
(12670, 2, 0, 'Abandon Succubus', 50698, 1, 1, 0, 0, 0, 500000, 'Are you sure you want to pay to abandon your minion?', 0, 0),
(12670, 3, 0, 'Abandon Felhunter', 50699, 1, 1, 0, 0, 0, 500000, 'Are you sure you want to pay to abandon your minion?', 0, 0);

-- Ransin Donner 2943
DELETE FROM `gossip_menu_option` WHERE `MenuID` = 6565;
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionBroadcastTextID`, `OptionType`, `OptionNpcFlag`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextID`, `VerifiedBuild`) VALUES 
(6565, 0, 0, 'I would like to enter the secret code to receive my Murloc pet.', 11765, 1, 1, 0, 0, 1, 0, '', 0, 0),
(6565, 1, 0, 'I would like to enter the secret code to receive my Murloc costume.', 22291, 1, 1, 0, 0, 1, 0, '', 0, 0),
(6565, 2, 0, 'I would like to enter the secret code to receive my Big Blizzard Bear.', 32042, 1, 1, 0, 0, 1, 0, '', 0, 0);