-- quest: fix quest Saving the Young (24623)
-- Lost Bloodtalon Hatchling (39157)
SET @LOST_BLOODTALON_HATCHLING := 39157;

UPDATE `creature_template` SET `AIName` = 'SmartAI', `ScriptName` = '' WHERE `entry` = @LOST_BLOODTALON_HATCHLING;

DELETE FROM `smart_scripts` WHERE `entryorguid` = 39157 AND `source_type` = 0; 
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(@LOST_BLOODTALON_HATCHLING, 0, 0, 0, 8, 0, 100, 513, 70874, 0, 0, 0, '', 33, @LOST_BLOODTALON_HATCHLING, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Lost Bloodtalon Hatchling - On spellhit - killcredit'),
(@LOST_BLOODTALON_HATCHLING, 0, 1, 2, 8, 0, 100, 512, 70874, 0, 0, 0, '', 29, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Lost Bloodtalon Hatchling - On spellhit - Start Follow Invoker'),
(@LOST_BLOODTALON_HATCHLING, 0, 2, 0, 61, 0, 100, 512, 0, 0, 0, 0, '', 41, 60000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Lost Bloodtalon Hatchling - On spellhit - Despawn');
