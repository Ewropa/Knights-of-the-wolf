-- fix quest: Inciting the Elements 25370
SET @FAERIE_DRAGON = 39921;
SET @TWILIGHT_INCITER := 39926;

-- Faerie Dragon 39921
UPDATE `creature_template` SET `AIName` = 'SmartAI', `ScriptName` = '' WHERE `entry` = @FAERIE_DRAGON;

DELETE FROM `creature_text` WHERE `CreatureID` = @FAERIE_DRAGON;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES 
(@FAERIE_DRAGON, 0, 0, 'We find evil ones now!  Follow!', 12, 7, 100, 0, 0, 0, 40300, 0, 'Faerie Dragon'),
(@FAERIE_DRAGON, 1, 0, 'Over here!  You must stop them!', 14, 7, 100, 0, 0, 0, 40303, 0, 'Faerie Dragon'),
(@FAERIE_DRAGON, 0, 1, 'They hide this way!  Quick!', 12, 7, 100, 0, 0, 0, 40301, 0, 'Faerie Dragon'),
(@FAERIE_DRAGON, 1, 1, 'You must fight now, $n!', 14, 7, 100, 0, 0, 0, 40304, 0, 'Faerie Dragon'),
(@FAERIE_DRAGON, 0, 2, 'We look for the evil ones now, yes?', 12, 7, 100, 0, 0, 0, 40302, 0, 'Faerie Dragon'),
(@FAERIE_DRAGON, 1, 2, 'Over here, $n!', 14, 7, 100, 0, 0, 0, 40305, 0, 'Faerie Dragon'),
(@FAERIE_DRAGON, 0, 3, 'Meep!  $R is good friend.  Follow now!  We find intruder!', 12, 7, 100, 0, 0, 0, 39943, 0, 'Faerie Dragon');

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@FAERIE_DRAGON, @FAERIE_DRAGON*100) AND `source_type` IN (0, 9);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(@FAERIE_DRAGON, 0, 0, 0, 8, 0, 100, 512, 74513, 0, 0, 0, 80, @FAERIE_DRAGON*100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Faerie Dragon - Run Script (No Repeat)'),
(@FAERIE_DRAGON*100, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Faerie Dragon - On Script - Say Line 0'),
(@FAERIE_DRAGON*100, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 89, 20, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Faerie Dragon - On Script - Random move'),
(@FAERIE_DRAGON*100, 9, 2, 0, 0, 0, 100, 0, 12000, 12000, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Faerie Dragon - On Script - Say Line 1'),
(@FAERIE_DRAGON*100, 9, 3, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 103, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Faerie Dragon - On Script - set root 0'),
(@FAERIE_DRAGON*100, 9, 4, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 11, 74514, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Faerie Dragon - On Script - Summon Twilight Inciter'),
(@FAERIE_DRAGON*100, 9, 5, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Faerie Dragon - On Script - Despawn');

-- Twilight Inciter 39926
UPDATE `creature_template` SET `AIName` = 'SmartAI', `ScriptName` = '' WHERE `entry` = @TWILIGHT_INCITER;

DELETE FROM `creature_template_addon` WHERE `entry` = @TWILIGHT_INCITER;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(@TWILIGHT_INCITER, 0, 0, 0, 1, 0, '');

DELETE FROM `creature_text` WHERE `CreatureID` = @TWILIGHT_INCITER;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES 
(@TWILIGHT_INCITER, 0, 0, 'How did you find me?  It matters little... you will die!', 12, 7, 100, 0, 0, 0, 39945, 0, 'Twilight Inciter'),
(@TWILIGHT_INCITER, 0, 1, 'I\'ve been spotted?  Time to die!', 12, 7, 100, 0, 0, 0, 39946, 0, 'Twilight Inciter'),
(@TWILIGHT_INCITER, 0, 2, 'You will not give away my position, $c!', 12, 7, 100, 0, 0, 0, 39947, 0, 'Twilight Inciter'),
(@TWILIGHT_INCITER, 0, 3, 'You might have found me, but you won\'t bring word back to the others!', 12, 7, 100, 0, 0, 0, 39948, 0, 'Twilight Inciter');

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@TWILIGHT_INCITER, @TWILIGHT_INCITER*100) AND `source_type` IN (0, 9);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(@TWILIGHT_INCITER, 0, 0, 1, 25, 0, 100, 512, 0, 0, 0, 0, 11, 30991, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Twilight Inciter - Out of Combat - Cast \'Stealth\' (No Repeat)'),
(@TWILIGHT_INCITER, 0, 1, 2, 61, 0, 100, 512, 0, 0, 0, 0, 18, 33280, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Twilight Inciter - Set Unit Flags 33280'),
(@TWILIGHT_INCITER, 0, 2, 0, 61, 0, 100, 512, 0, 0, 0, 0, 80, @TWILIGHT_INCITER*100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Twilight Inciter - Run Script (No Repeat)'),
(@TWILIGHT_INCITER, 0, 3, 0, 67, 0, 100, 512, 3900, 6900, 0, 0, 11, 37685, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Twilight Inciter - On Behind Target - Cast \'Backstab\''),
(@TWILIGHT_INCITER, 0, 4, 0, 67, 0, 100, 512, 8000, 9000, 0, 0, 11, 80576, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Twilight Inciter - On Behind Target - Cast \'Shadowstep\''),
(@TWILIGHT_INCITER*100, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 66, 0, 0, 0, 0, 0, 0, 21, 30, 0, 0, 0, 0, 0, 0, 'Twilight Inciter - set orientation - target_type 21'),
(@TWILIGHT_INCITER*100, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 71, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Twilight Inciter - Run Script (No Repeat)'),
(@TWILIGHT_INCITER*100, 9, 2, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 21, 30, 0, 0, 0, 0, 0, 0, 'Twilight Inciter - On Script - Say Line 0'),
(@TWILIGHT_INCITER*100, 9, 3, 0, 0, 0, 100, 0, 4000, 4000, 0, 0, 19, 33280, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Twilight Inciter - remove Unit Flags 33280');

