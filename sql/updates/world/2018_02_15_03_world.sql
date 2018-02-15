DELETE FROM `gossip_menu_option` WHERE `MenuID` = 1293;
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionBroadcastTextId`, `OptionType`, `OptionNpcflag`, `VerifiedBuild`) VALUES 
(1293, 1, 0, 'What can I do at an inn?', 4308, 1, 1, 0),
(1293, 2, 5, 'Make this inn your home.', 2822, 8, 65536, 0),
(1293, 3, 1, 'I want to browse your goods.', 3370, 3, 128, 0),
(1293, 0, 0, 'Trick or Treat!', 10693, 1, 1, 0);

DELETE FROM `gossip_menu_option_action` WHERE `MenuID` = 1293;
INSERT INTO `gossip_menu_option_action` (`MenuID`, `OptionID`, `ActionMenuId`, `ActionPoiId`) VALUES 
(1293, 1, 1221, 0);
