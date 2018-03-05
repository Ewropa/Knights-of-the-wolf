SET @CENARION_EMISSARY_JADEMOON := 15187;
SET @MENU_ID_1 := 12129; -- Cenarion Emissary Jademoon 15187
SET @CENARION_EMISSARY_BLACKHOO := 15188;
SET @MENU_ID_2 := 12125; -- Cenarion Emissary Blackhoo 15188

-- quest: Hero\'s Call: Mount Hyjal! 27726
-- Cenarion Emissary Jademoon 15187
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 15 AND `SourceGroup` = @MENU_ID_1;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(15, @MENU_ID_1, 0, 0, 0, 28, 0, 27726, 0, 0, 0, 0, 0, '', 'Show gossip option 12129 if player has quest Hero\'s Call: Mount Hyjal!');

DELETE FROM `gossip_menu_option` WHERE `MenuId` = @MENU_ID_1;
INSERT INTO `gossip_menu_option` (`MenuId`, `OptionIndex`, `OptionIcon`, `OptionText`, `OptionBroadcastTextId`, `OptionType`, `OptionNpcFlag`, `VerifiedBuild`) VALUES 
(@MENU_ID_1, 0, 0, 'Could you please send me to Moonglade, Emissary?', 46530, 1, 1, 0);

DELETE FROM `smart_scripts` WHERE `entryorguid` = @CENARION_EMISSARY_JADEMOON AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(@CENARION_EMISSARY_JADEMOON, 0, 0, 1, 62, 0, 100, 512, @MENU_ID_1, 0, 0, 0, '', 85, 86587, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Cenarion Emissary Jademoon - On gossip option select - Player Cast Teleport to Moonglade on self'),
(@CENARION_EMISSARY_JADEMOON, 0, 1, 0, 61, 0, 100, 512, 0, 0, 0, 0, '', 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Cenarion Emissary Jademoon - On Gossip Option 0 Selected - Close Gossip');

-- Warchief\'s Command: Mount Hyjal! 27721
-- Cenarion Emissary Blackhoo 15188
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 15 AND `SourceGroup` = @MENU_ID_2;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(15, @MENU_ID_2, 0, 0, 0, 28, 0, 27721, 0, 0, 0, 0, 0, '', 'Show gossip option 12125 if player has quest Warchief\'s Command: Mount Hyjal!');

DELETE FROM `gossip_menu_option` WHERE `MenuId` = @MENU_ID_2;
INSERT INTO `gossip_menu_option` (`MenuId`, `OptionIndex`, `OptionIcon`, `OptionText`, `OptionBroadcastTextId`, `OptionType`, `OptionNpcFlag`, `VerifiedBuild`) VALUES 
(@MENU_ID_2, 0, 0, 'Could you please send me to Moonglade, Emissary?', 46530, 1, 1, 0);

DELETE FROM `smart_scripts` WHERE `entryorguid` = @CENARION_EMISSARY_BLACKHOO AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(@CENARION_EMISSARY_BLACKHOO, 0, 0, 1, 62, 0, 100, 512, @MENU_ID_2, 0, 0, 0, '', 85, 86565, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Cenarion Emissary Jademoon - On gossip option select - Player Cast Teleport to Moonglade on self'),
(@CENARION_EMISSARY_BLACKHOO, 0, 1, 0, 61, 0, 100, 512, 0, 0, 0, 0, '', 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Cenarion Emissary Jademoon - On Gossip Option 0 Selected - Close Gossip');
