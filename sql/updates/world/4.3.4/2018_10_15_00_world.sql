-- ----------------------
-- Ironforge
-- ----------------------
-- Pool quests - cooking Ironforge
DELETE FROM `pool_quest` WHERE `entry` IN (29351, 29352, 29353, 29355, 29356);
INSERT INTO `pool_quest` (`entry`, `pool_entry`, `description`) VALUES 
(29351, 385, 'A Round for the Guards'), -- забота о стражниках
(29352, 385, 'A Fowl Shortage'), -- нужны циплята
(29353, 385, 'Keepin\' the Haggis Flowin\''), -- Рулета с потрошками много не бывает
(29355, 385, 'Can\'t Get Enough Spice Bread'), -- Хлеба с пряностями много не бывает
(29356, 385, 'I Need to Cask a Favor'); -- доставка бочонка

DELETE FROM `pool_template` WHERE `entry` = 385;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES 
(385, 1, 'Сooking Ironforge NPC - Daryl Riknussun (5159)');

-- local quest`s
-- A Round for the Guards 29351
UPDATE `quest_template_locale` SET `OfferRewardText` = 'Я всегда говорю, что хороший солдат – это сытый солдат. Спасибо тебе за помощь, $N.', `RequestItemsText` = 'Ты уже $Gвыполнил:выполнила; задание?' WHERE ID = 29351 AND `locale` = 'ruRU';

-- Keepin' the Haggis Flowin 29353
UPDATE `quest_template_locale` SET `OfferRewardText` = 'Все принес? Чудесно! Я прямо сейчас и начну.', `RequestItemsText` = 'Ты $Gпринес:принесла; ингредиенты?' WHERE ID = 29353 AND `locale` = 'ruRU';

-- Can\'t Get Enough Spice Bread 29355
UPDATE `quest_template_locale` SET `OfferRewardText` = 'Выглядит очень аппетитно. Спасибо, $N.', `RequestItemsText` = 'Ты $Gпринес:принесла; хлеб?' WHERE ID = 29355 AND `locale` = 'ruRU';

-- A Fowl Shortage 29352
UPDATE `quest_template_locale` SET `OfferRewardText` = 'Прекрасно, именно то, что надо. Спасибо тебе, $N, и прости, что я был с тобой резок. Просто не выношу, когда не успеваю приготовить еду в срок.', `RequestItemsText` = 'Цыплята, $N, цыплята! Ты их $Gпринес:принесла;?' WHERE ID = 29352 AND `locale` = 'ruRU';

-- I Need to Cask a Favor 29356
UPDATE `quest_template_locale` SET `OfferRewardText` = 'Прекрасно! Я всегда говорю, что $N – это просто находка! Историк, исследователь, да еще и пиво варит. Есть ли что-то, чего он не умеет?', `RequestItemsText` = 'Ты $Gпринес:принесла; боченок эля?' WHERE ID = 29356 AND `locale` = 'ruRU';

-- fix quest: A Round for the Guards 29351
-- Ironforge Guard 5595
SET @IRONFORGE_GUARD := 5595;

UPDATE `creature_template` SET `AIName` = 'SmartAI', `ScriptName` = '' WHERE  `entry` = @IRONFORGE_GUARD;

DELETE FROM `creature_text` WHERE `CreatureID` = @IRONFORGE_GUARD;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES 
(@IRONFORGE_GUARD, 0, 0, 'Beer an\' haggis, now that\'ll put hair on yer chest!', 12, 0, 100, 7, 0, 0, 52137, 0, 'Ironforge Guard'),
(@IRONFORGE_GUARD, 0, 1, 'How did ye know me favorite meal?', 12, 0, 100, 7, 0, 0, 52138, 0, 'Ironforge Guard'),
(@IRONFORGE_GUARD, 0, 2, 'Haggis fer breakfast, haggis fer lunch, and a sensible haggis dinner!', 12, 0, 100, 7, 0, 0, 52139, 0, 'Ironforge Guard'),
(@IRONFORGE_GUARD, 0, 3, 'Keep bringing me food like this an\' ye\'ll be me new best friend!', 12, 0, 100, 7, 0, 0, 52140, 0, 'Ironforge Guard'),
(@IRONFORGE_GUARD, 0, 4, 'Thank ye!', 12, 0, 100, 7, 0, 0, 52141, 0, 'Ironforge Guard'),
(@IRONFORGE_GUARD, 0, 5, 'Give me thanks to Daryl, will ye?', 12, 0, 100, 7, 0, 0, 52142, 0, 'Ironforge Guard');

DELETE FROM `smart_scripts` WHERE `entryorguid` = @IRONFORGE_GUARD AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(@IRONFORGE_GUARD, 0, 0, 0, 8, 0, 100, 0, 99479, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Ironforge Guard - On Spell Hit -  Say Line 0');

-- fix quest: A Fowl Shortage 29352
-- Dun Morogh Chicken 53568
SET @DUN_MOROGH_CHICKEN := 53568;

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 18 AND `SourceGroup` = @DUN_MOROGH_CHICKEN;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(18, @DUN_MOROGH_CHICKEN, 99487, 0, 0, 9, 0, 29352, 0, 0, 0, 0, 0, '', 'Spellclick allow only if quest objective is not complete'),
(18, @DUN_MOROGH_CHICKEN, 99486, 0, 0, 9, 0, 29352, 0, 0, 0, 0, 0, '', 'Spellclick allow only if quest objective is not complete');

UPDATE `creature_template` SET `npcflag` = 16777216, `AIName` = 'SmartAI', `ScriptName` = '' WHERE `entry` = @DUN_MOROGH_CHICKEN;

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` = @DUN_MOROGH_CHICKEN;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES 
(@DUN_MOROGH_CHICKEN, 99487, 3, 0),
(@DUN_MOROGH_CHICKEN, 99486, 1, 0);

DELETE FROM `smart_scripts` WHERE `entryorguid` = @DUN_MOROGH_CHICKEN AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(@DUN_MOROGH_CHICKEN, 0, 0, 0, 8, 0, 100, 0, 99486, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Dun Morogh Chicken - On Spell Hit - Despaw');

-- fix quest: I Need to Cask a Favor 29356
-- Daryl Riknussun 5159
SET @DARYL_RIKNUSSUN := 5159;

UPDATE `creature` SET  `orientation` = 2.7099482 WHERE `ID` = @DARYL_RIKNUSSUN;

UPDATE `creature_template` SET  `AIName` = 'SmartAI', `ScriptName` = '' WHERE `entry` = @DARYL_RIKNUSSUN;

DELETE FROM `creature_text` WHERE `CreatureID` = @DARYL_RIKNUSSUN;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES 
(@DARYL_RIKNUSSUN, 0, 0, 'There ye are! I was startin\' to think ye\'d made off with the beer!', 12, 0, 100, 5, 0, 0, 52153, 0, '');

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@DARYL_RIKNUSSUN, @DARYL_RIKNUSSUN*100) AND `source_type` IN (0, 9);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(@DARYL_RIKNUSSUN, 0, 0, 1, 10, 0, 100, 0, 1, 5, 5000, 5000, 1, 28, 99491, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Daryl Riknussun - OOC Los -  Remove Aura \'Beer Delivery\''),
(@DARYL_RIKNUSSUN, 0, 1, 2, 61, 0, 100, 512, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Dun Morogh Chicken -  OC Los - Say Line 0'),
(@DARYL_RIKNUSSUN, 0, 2, 0, 61, 0, 100, 512, 0, 0, 0, 0, 0, 33, 53574, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Dun Morogh Chicken - OOC Los - Quest Credit \'IPA Delivery Credit\'');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 22 AND `SourceEntry` = @DARYL_RIKNUSSUN;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(22, 1, @DARYL_RIKNUSSUN, 0, 0, 9, 0, 29356, 0, 0, 0, 0, 0, '', 'SAI Daryl Riknussun only activates if player is on the quest \'I Need to Cask a Favor\''),
(22, 1, @DARYL_RIKNUSSUN, 0, 0, 1, 0, 99491, 0, 0, 0, 0, 0, '', 'SAI Daryl Riknussun 5159 if player has aura \'Beer Delivery\''); 
 
-- ----------------------------------
-- Darnassus
-- ----------------------------------
-- Pool quests - Сooking Darnassus
DELETE FROM `pool_quest` WHERE `entry` IN (29318, 29316, 29313, 29357, 29314);
INSERT INTO `pool_quest` (`entry`, `pool_entry`, `description`) VALUES 
(29318, 386, 'Ribs for the Sentinels'), -- ребрышки для часовых
(29316, 386, 'Back to Basics'), -- Азы профессии
(29313, 386, 'The Secret to Perfect Kimchi'), -- Секрет превосходного кимчи
(29357, 386, 'Spice Bread Aplenty'), -- Хлеба с пряностями хоть отбавляй
(29314, 386, 'Remembering the Ancestors'); -- Дань уважения предкам

DELETE FROM `pool_template` WHERE `entry` = 386;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES 
(386, 1, 'Сooking Darnassus NPC - Alegorn (4210)');

-- fix quest: Ribs for the Sentinels 29318
-- Darnassus Sentinel 4262
SET @DARNASSUS_SENTINEL := 4262;

UPDATE `creature_template` SET `AIName` = 'SmartAI', `ScriptName` = '' WHERE  `entry` = @DARNASSUS_SENTINEL;

DELETE FROM `creature_text` WHERE `CreatureID` = @DARNASSUS_SENTINEL;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES 
(@DARNASSUS_SENTINEL, 0, 0, 'Thank you!', 12, 0, 100, 7, 0, 0, 52093, 0, 'Darnassus Sentinel'),
(@DARNASSUS_SENTINEL, 0, 1, 'These are delicious!', 12, 0, 100, 7, 0, 0, 52094, 0, 'Darnassus Sentinel'),
(@DARNASSUS_SENTINEL, 0, 2, 'I was getting so hungry...', 12, 0, 100, 7, 0, 0, 52095, 0, 'Darnassus Sentinel'),
(@DARNASSUS_SENTINEL, 0, 3, 'That meat smells so good.', 12, 0, 100, 7, 0, 0, 52096, 0, 'Darnassus Sentinel'),
(@DARNASSUS_SENTINEL, 0, 4, 'Ribs, my favorite!', 12, 0, 100, 7, 0, 0, 52097, 0, 'Darnassus Sentinel'),
(@DARNASSUS_SENTINEL, 0, 5, 'Where do I go for seconds?', 12, 0, 100, 7, 0, 0, 52098, 0, 'Darnassus Sentinel');

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@DARNASSUS_SENTINEL, @DARNASSUS_SENTINEL*100) AND `source_type` IN (0, 9);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(@DARNASSUS_SENTINEL, 0, 0, 0, 8, 0, 100, 0, 99307, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Darnassus Sentinel - On Spell Hit -  Say Line 0');

-- local quest`s
-- Ribs for the Sentinels 29318
UPDATE `quest_template_locale` SET `OfferRewardText` = 'С твоей помощью нам было намного проще накормить всех часовых. Им не пришлось простаивать в очереди за пайком.', `RequestItemsText` = 'Часовые усердно занимаются боевой подготовкой, чтобы оградить Дарнас от угрозы, поэтому у них хороший аппетит.' WHERE ID = 29318 AND `locale` = 'ruRU';

-- Back to Basics 29316
UPDATE `quest_template_locale` SET `OfferRewardText` = 'Нам приходится много работать, чтобы обеспечивать всех рисовой мукой. Спасибо за помощь, $N.', `RequestItemsText` = 'Ты $Gпомог:помогла; смолоть рисовую муку?' WHERE ID = 29316 AND `locale` = 'ruRU';

-- Remembering the Ancestors 29314
UPDATE `quest_template_locale` SET `OfferRewardText` = '<Вы раскладываете пироги вокруг алтаря, который начинает источать мягкий свет. Предки смотрят на вас с одобрением, и вы это чувствуете.>', `RequestItemsText` = 'Это то святилище, о котором говорил учитель.' WHERE ID = 29314 AND `locale` = 'ruRU';

-- The Secret to Perfect Kimchi 29313
UPDATE `quest_template_locale` SET `OfferRewardText` = 'Спасибо, $N. Сам бы я ни за что не собрал все кадки. Было бы обидно, если бы столько прекрасного кимчи пропало!', `RequestItemsText` = 'Ну как, $Gнашел:нашла; кадки?' WHERE ID = 29313 AND `locale` = 'ruRU';

-- Spice Bread Aplenty 29357
UPDATE `quest_template_locale` SET `OfferRewardText` = 'Прекрасный хлеб, $N. Надеюсь, выпечка доставляет тебе столько же удовольствия, сколько и мне.', `RequestItemsText` = 'Обожаю аромат свежевыпеченного хлеба, особенно хлеба с пряностями. А ты?' WHERE ID = 29357 AND `locale` = 'ruRU';

-- -------------------------------------------------------- 
-- Stormwind City 
-- -------------------------------------------------------- 
-- Pool quests - Сooking Stormwind City 
DELETE FROM `pool_quest` WHERE `entry` IN (26153, 26177, 26190, 26192, 26183);
INSERT INTO `pool_quest` (`entry`, `pool_entry`, `description`) VALUES 
(26153, 387, 'Penny\'s Pumpkin Pancakes'), -- Тыквенные оладьи Пэнни
(26177, 387, 'Feeling Crabby?'), -- Крабный день
(26190, 387, 'A Fisherman\'s Feast'), -- Рыбацкая услада
(26192, 387, 'Orphans Like Cookies Too!'), -- Сиротки тоже любят печенье!
(26183, 387, 'The King\'s Cider'); -- Королевский сидр

DELETE FROM `pool_template` WHERE `entry` = 387;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES 
(387, 1, 'Сooking Stormwind City NPC - Robby Flay (42288)');

-- fix quest: Feeling Crabby? 26177
-- Canal Crab 42339
SET @CANAL_CRAB := 42339;

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 18 AND `SourceGroup` = @CANAL_CRAB;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(18, @CANAL_CRAB, 78975, 0, 0, 9, 0, 26177, 0, 0, 0, 0, 0, '', 'Spellclick allow only if quest objective is not complete');

UPDATE `creature_template` SET `npcflag` = 16777216, `AIName` = 'SmartAI', `ScriptName` = '' WHERE `entry` = @CANAL_CRAB;

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` = @CANAL_CRAB;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES 
(@CANAL_CRAB, 78975, 3, 0);

DELETE FROM `smart_scripts` WHERE `entryorguid` = @CANAL_CRAB AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(@CANAL_CRAB, 0, 0, 0, 73, 0, 100, 0, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Canal Crab - On Spell Hit - Despaw');

-- local quest`s
-- Penny's Pumpkin Pancakes 26153
UPDATE `quest_template_locale` SET `OfferRewardText` = 'Отлично, $N! Пэнни будет в восторге!', `RequestItemsText` = '$GПринес:Принесла; тыквы?' WHERE ID = 26153 AND `locale` = 'ruRU';

-- Feeling Crabby? 26177
UPDATE `quest_template_locale` SET `OfferRewardText` = 'Крабы просто отменные! Пойду почищу их, а королю обязательно расскажу, кто расстарался, обеспечивая его сегодняшний ужин. Спасибо', `RequestItemsText` = 'А у тебя ловкие руки, как я погляжу! Невероятно, как ты $Gсумел:сумела; так быстро наловить крабов!' WHERE ID = 26177 AND `locale` = 'ruRU';

-- A Fisherman's Feast 26190
UPDATE `quest_template_locale` SET `OfferRewardText` = 'Спасибо, $N. Немедленно примусь чистить рыбу для его Величества.', `RequestItemsText` = 'Удалось "позаимствовать" рыбку?' WHERE ID = 26190 AND `locale` = 'ruRU';

-- Orphans Like Cookies Too! 26192
UPDATE `quest_template_locale` SET `OfferRewardText` = 'Этих мешков должно хватить, $N. Не терпится поглядеть на улыбающиеся рожицы сироток.', `RequestItemsText` = 'Ну что, $Gпринес:принесла; сахарную пудру?' WHERE ID = 26192 AND `locale` = 'ruRU';

-- The King's Cider 26183
UPDATE `quest_template_locale` SET `OfferRewardText` = 'Пойдет, $N. Прямо сейчас примусь за сидр.', `RequestItemsText` = 'Удалось раздобыть сочных яблок?' WHERE ID = 26183 AND `locale` = 'ruRU';

 -- fix quest Сooking
UPDATE `quest_template_addon` SET `ExclusiveGroup` = 29351, `RequiredSkillPoints` = 1 WHERE `ID` IN (26153, 26177, 26183, 26190, 26192, 29313, 29314, 29316, 29318, 29351, 29352, 29353, 29355, 29356, 29357);