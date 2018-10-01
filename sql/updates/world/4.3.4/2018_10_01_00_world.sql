-- Stormwind Harbor Guard 29712

DELETE FROM `gossip_menu_option` WHERE `MenuID` = 435;
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionBroadcastTextID`, `OptionType`, `OptionNpcFlag`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextID`, `VerifiedBuild`) VALUES 
(435, 0, 0, '|cFF0008E8NEW|r: Reforging', 50622, 1, 1, 13029, 552, 0, 0, '', 0, 0),
(435, 1, 0, '|cFF0008E8NEW|r: Transmogrification', 56155, 1, 1, 13029, 552, 0, 0, '', 0, 0),
(435, 2, 0, '|cFF0008E8NEW|r: Void Storage', 53080, 1, 1, 13029, 552, 0, 0, '', 0, 0),
(435, 3, 0, 'Auction House', 44627, 1, 1, 11839, 0, 0, 0, '', 0, 0),
(435, 4, 0, 'Bank', 44628, 1, 1, 11841, 0, 0, 0, '', 0, 0),
(435, 5, 0, 'Barber', 45376, 1, 1, 10011, 30, 0, 0, '', 0, 0),
(435, 6, 0, 'Class Trainer', 45378, 1, 1, 401, 0, 0, 0, '', 0, 0),
(435, 7, 0, 'Flight Master', 45379, 1, 1, 382, 23, 0, 0, '', 0, 0),
(435, 8, 0, 'Guild Master & Vendor', 2870, 1, 1, 383, 553, 0, 0, '', 0, 0),
(435, 9, 0, 'Inn', 7075, 1, 1, 11843, 0, 0, 0, '', 0, 0),
(435, 10, 0, 'Mailbox', 45381, 1, 1, 3127, 0, 0, 0, '', 0, 0),
(435, 11, 0, 'Points of Interest', 32180, 1, 1, 11845, 0, 0, 0, '', 0, 0),
(435, 12, 0, 'Portals', 47507, 1, 1, 12243, 554, 0, 0, '', 0, 0),
(435, 13, 0, 'Profession Trainer', 45382, 1, 1, 421, 0, 0, 0, '', 0, 0),
(435, 14, 0, 'Stable Master', 45383, 1, 1, 11846, 0, 0, 0, '', 0, 0),
(435, 15, 0, 'Vendor', 44612, 1, 1, 11848, 0, 0, 0, '', 0, 0);

DELETE FROM `gossip_menu_option` WHERE `MenuID` = 11839;
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionBroadcastTextID`, `OptionType`, `OptionNpcFlag`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextID`, `VerifiedBuild`) VALUES 
(11839, 0, 0, 'Trade District Auction House', 6370, 1, 1, 3102, 18, 0, 0, '', 0, 0),
(11839, 1, 0, 'Dwarven District Auction House', 44592, 1, 1, 11840, 555, 0, 0, '', 0, 0);

DELETE FROM `gossip_menu_option` WHERE `MenuID` = 11841;
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionBroadcastTextID`, `OptionType`, `OptionNpcFlag`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextID`, `VerifiedBuild`) VALUES 
(11841, 0, 0, 'Trade District Bank', 44596, 1, 1, 265, 19, 0, 0, '', 0, 0),
(11841, 1, 0, 'Dwarven District Bank', 44597, 1, 1, 11842, 556, 0, 0, '', 0, 0);

DELETE FROM `gossip_menu_option` WHERE `MenuID` = 401;
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionBroadcastTextID`, `OptionType`, `OptionNpcFlag`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextID`, `VerifiedBuild`) VALUES 
(401, 0, 0, 'Druid', 45409, 1, 1, 405, 457, 0, 0, '', 0, 0),
(401, 1, 0, 'Hunter', 50546, 1, 1, 11855, 0, 0, 0, '', 0, 0),
(401, 2, 0, 'Mage', 45404, 1, 1, 402, 533, 0, 0, '', 0, 0),
(401, 3, 0, 'Paladin', 48028, 1, 1, 407, 534, 0, 0, '', 0, 0),
(401, 4, 0, 'Priest', 45405, 1, 1, 406, 534, 0, 0, '', 0, 0),
(401, 5, 0, 'Rogue', 45406, 1, 1, 403, 535, 0, 0, '', 0, 0),
(401, 6, 0, 'Shaman', 45410, 1, 1, 8164, 536, 0, 0, '', 0, 0),
(401, 7, 0, 'Warlock', 45407, 1, 1, 409, 537, 0, 0, '', 0, 0),
(401, 8, 0, 'Warrior', 45408, 1, 1, 404, 538, 0, 0, '', 0, 0);

DELETE FROM `gossip_menu_option` WHERE `MenuID` = 11843;
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionBroadcastTextID`, `OptionType`, `OptionNpcFlag`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextID`, `VerifiedBuild`) VALUES 
(11843, 0, 0, 'Trade District Inn', 44603, 1, 1, 3126, 557, 0, 0, '', 0, 0),
(11843, 1, 0, 'Dwarven District Inn', 44604, 1, 1, 11844, 558, 0, 0, '', 0, 0);

DELETE FROM `gossip_menu_option` WHERE `MenuID` = 3127;
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionBroadcastTextID`, `OptionType`, `OptionNpcFlag`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextID`, `VerifiedBuild`) VALUES 
(3127, 0, 0, 'Auction House', 44627, 1, 1, 11839, 0, 0, 0, '', 0, 0),
(3127, 1, 0, 'Bank', 5514, 1, 1, 11841, 0, 0, 0, '', 0, 0),
(3127, 2, 0, 'Inn', 7075, 1, 1, 11843, 0, 0, 0, '', 0, 0);

DELETE FROM `gossip_menu_option` WHERE `MenuID` = 11845;
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionBroadcastTextID`, `OptionType`, `OptionNpcFlag`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextID`, `VerifiedBuild`) VALUES 
(11845, 0, 0, 'Champions\' Hall', 44652, 1, 1, 11867, 559, 0, 0, '', 0, 0),
(11845, 1, 0, 'Deeprun Tram', 6351, 1, 1, 3081, 560, 0, 0, '', 0, 0),
(11845, 2, 0, 'Lion\'s Rest', 44635, 1, 1, 11857, 561, 0, 0, '', 0, 0),
(11845, 3, 0, 'The Stockade', 44639, 1, 1, 11859, 562, 0, 0, '', 0, 0),
(11845, 4, 0, 'Stormwind Harbor', 29416, 1, 1, 9767, 20, 0, 0, '', 0, 0),
(11845, 5, 0, 'Stormwind Keep', 44637, 1, 1, 11858, 563, 0, 0, '', 0, 0);

DELETE FROM `gossip_menu_option` WHERE `MenuID` = 421;
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionBroadcastTextID`, `OptionType`, `OptionNpcFlag`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextID`, `VerifiedBuild`) VALUES 
(421, 0, 0, 'Alchemy', 52058, 1, 1, 422, 539, 0, 0, '', 0, 0),
(421, 1, 0, 'Archaeology', 44649, 1, 1, 11866, 540, 0, 0, '', 0, 0),
(421, 2, 0, 'Blacksmithing', 51346, 1, 1, 423, 541, 0, 0, '', 0, 0),
(421, 3, 0, 'Cooking', 45763, 1, 1, 424, 542, 0, 0, '', 0, 0),
(421, 4, 0, 'Enchanting', 52063, 1, 1, 444, 543, 0, 0, '', 0, 0),
(421, 5, 0, 'Engineering', 51347, 1, 1, 425, 544, 0, 0, '', 0, 0),
(421, 6, 0, 'First Aid', 52066, 1, 1, 426, 545, 0, 0, '', 0, 0),
(421, 7, 0, 'Fishing', 45767, 1, 1, 443, 546, 0, 0, '', 0, 0),
(421, 8, 0, 'Flying', 44664, 1, 1, 0, 0, 0, 0, '', 0, 0),
(421, 9, 0, 'Herbalism', 45768, 1, 1, 427, 539, 0, 0, '', 0, 0),
(421, 10, 0, 'Inscription', 48811, 1, 1, 10010, 13, 0, 0, '', 0, 0),
(421, 11, 0, 'Jewelcrafting', 45758, 1, 1, 11865, 547, 0, 0, '', 0, 0),
(421, 12, 0, 'Leatherworking', 52071, 1, 1, 428, 548, 0, 0, '', 0, 0),
(421, 13, 0, 'Mining', 51348, 1, 1, 430, 549, 0, 0, '', 0, 0),
(421, 14, 0, 'Riding', 44663, 1, 1, 11869, 550, 0, 0, '', 0, 0),
(421, 15, 0, 'Skinning', 52076, 1, 1, 431, 548, 0, 0, '', 0, 0),
(421, 16, 0, 'Tailoring', 52077, 1, 1, 432, 551, 0, 0, '', 0, 0);

DELETE FROM `gossip_menu_option` WHERE `MenuID` = 11846;
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionBroadcastTextID`, `OptionType`, `OptionNpcFlag`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextID`, `VerifiedBuild`) VALUES 
(11846, 0, 0, 'Old Town Stable Master', 44610, 1, 1, 11847, 564, 0, 0, '', 0, 0),
(11846, 1, 0, 'Dwarven District Stable Master', 44609, 1, 1, 4925, 565, 0, 0, '', 0, 0);

DELETE FROM `gossip_menu_option` WHERE `MenuID` = 11848;
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionBroadcastTextID`, `OptionType`, `OptionNpcFlag`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextID`, `VerifiedBuild`) VALUES 
(11848, 0, 0, 'Auction House', 44627, 1, 1, 11839, 0, 0, 0, '', 0, 0),
(11848, 1, 0, 'Gryphon Handler', 44659, 1, 1, 11871, 566, 0, 0, '', 0, 0),
(11848, 2, 0, 'Justice & Valor Quartermasters', 44654, 1, 1, 11868, 567, 0, 0, '', 0, 0),
(11848, 3, 0, 'Honor & Conquest Quartermasters', 44656, 1, 1, 11867, 568, 0, 0, '', 0, 0),
(11848, 4, 0, 'Horse Breeder', 44657, 1, 1, 11869, 569, 0, 0, '', 0, 0),
(11848, 5, 0, 'Profession Trainer', 45382, 1, 1, 421, 0, 0, 0, '', 0, 0);