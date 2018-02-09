-- Caregiver Chellan <Innkeeper> 16553
-- gossip menu option 7468
SET @GOSSIPMENU := 7468;

DELETE FROM `gossip_menu_option` WHERE `MenuID` = @GOSSIPMENU;
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionBroadcastTextId`, `OptionType`, `OptionNpcflag`, `VerifiedBuild`) VALUES 
(@GOSSIPMENU, 0, 0, 'Trick or Treat!', 10693, 1, 1, 0),
(@GOSSIPMENU, 1, 5, 'Make this inn your home.', 2822, 8, 65536, 0),
(@GOSSIPMENU, 2, 0, 'What can I do at an inn?', 4308, 1, 1, 0),
(@GOSSIPMENU, 4, 1, 'Let me browse your goods.', 2823, 3, 128, 0);
