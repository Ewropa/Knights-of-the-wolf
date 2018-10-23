SET @CGUID := 9000;
SET @RAINSPEAKER_WARRIOR := 28024;
SET @RAINSPEAKER_ORACLE := 28025;
SET @SOOYUM := 29121;
SET @ORACLE_SOO_NEE := 29006;
SET @GEEN := 31910;
SET @HIGH_ORACLE_SOO_SAY := 28027;
SET @SOO_JAM := 29037;
SET @GORLOC_HATCHLING := 28140;

DELETE FROM `creature` WHERE `ID` IN (@RAINSPEAKER_WARRIOR, @RAINSPEAKER_ORACLE, @SOOYUM, @ORACLE_SOO_NEE, @GEEN, @HIGH_ORACLE_SOO_SAY, @SOO_JAM, @GORLOC_HATCHLING);
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES 
-- Rainspeaker Warrior 28024
(@CGUID+0, @RAINSPEAKER_WARRIOR, 571, 3711, 4291, 1, 1, 169, 0, 0, 0, 5710.62, 4623.32, -137.399, 1.25664, 120, 0, 0, 0, 0, 0, 0, 0, 0, 0), 
(@CGUID+1, @RAINSPEAKER_WARRIOR, 571, 3711, 4291, 1, 1, 169, 0, 0, 0, 5671.8, 4536.08, -135.889, 4.86947, 120, 0, 0, 0, 0, 0, 0, 0, 0, 0), 
(@CGUID+2, @RAINSPEAKER_WARRIOR, 571, 3711, 4291, 1, 1, 169, 0, 0, 0, 5694.19, 4539.62, -135.886, 4.57276, 120, 0, 0, 0, 0, 0, 0, 0, 0, 0), 
(@CGUID+3, @RAINSPEAKER_WARRIOR, 571, 3711, 4291, 1, 1, 169, 0, 0, 0, 5688.15, 4629.17, -138.118, 1.43117, 120, 0, 0, 0, 0, 0, 0, 0, 0, 0), 
(@CGUID+4, @RAINSPEAKER_WARRIOR, 571, 3711, 4291, 1, 1, 169, 0, 0, 0, 5623.06, 4569.1, -137.401, 1.64061, 120, 0, 0, 0, 0, 0, 0, 0, 0, 0), 
(@CGUID+5, @RAINSPEAKER_WARRIOR, 571, 3711, 4291, 1, 1, 169, 0, 0, 0, 5672.08, 4604.54, -137.505, 5.16617, 120, 0, 0, 0, 0, 0, 0, 0, 0, 0), 
(@CGUID+6, @RAINSPEAKER_WARRIOR, 571, 3711, 4291, 1, 1, 169, 0, 0, 0, 5605.54, 4590.58, -139.929, 2.94961, 120, 0, 0, 0, 0, 0, 0, 0, 0, 0), 
(@CGUID+7, @RAINSPEAKER_WARRIOR, 571, 3711, 4291, 1, 1, 169, 0, 0, 0, 5590.8, 4656.7, -135.185, 3.42085, 120, 0, 0, 0, 0, 0, 0, 0, 0, 0),

-- Rainspeaker Oracle 28025
(@CGUID+8, @RAINSPEAKER_ORACLE, 571, 3711, 4291, 1, 1, 169, 0, 0, 0, 5679.77, 4564.83, -134.156, 1.48353, 120, 0, 0, 0, 0, 0, 0, 0, 0, 0), 
(@CGUID+9, @RAINSPEAKER_ORACLE, 571, 3711, 4291, 1, 1, 169, 0, 0, 0, 5709.96, 4562.79, -101.573, 5.02655, 120, 0, 0, 0, 0, 0, 0, 0, 0, 0), 
(@CGUID+10, @RAINSPEAKER_ORACLE, 571, 3711, 4291, 1, 1, 169, 0, 0, 0, 5687.6, 4589.07, -129.747, 3.05089, 120, 0, 0, 0, 0, 2, 0, 0, 0, 0), 
(@CGUID+11, @RAINSPEAKER_ORACLE, 571, 3711, 4291, 1, 1, 169, 0, 0, 0, 5646.01, 4597.88, -136.966, 3.59538, 120, 0, 0, 0, 0, 0, 0, 0, 0, 0),

-- Soo-yum 29121
(@CGUID+12, @SOOYUM, 571, 3711, 4291, 1, 1, 169, 0, 0, 0, 5629.61, 4581.05, -136.876, 5.96903, 120, 0, 0, 0, 0, 0, 0, 0, 0, 0),

-- Oracle Soo-nee 29006
(@CGUID+14, @ORACLE_SOO_NEE, 571, 3711, 4291, 1, 1, 169, 0, 0, 0, 5648.67, 4605.62, -132.056, 3.00197, 120, 0, 0, 0, 0, 0, 0, 0, 0, 0),

-- Geen 31910
(@CGUID+15, @GEEN, 571, 3711, 4291, 1, 1, 169, 0, 0, 0, 5657.65, 4551.35, -135.679, 1.78024, 120, 0, 0, 0, 0, 0, 0, 0, 0, 0),

-- High-Oracle Soo-say 28027
(@CGUID+16, @HIGH_ORACLE_SOO_SAY, 571, 3711, 4291, 1, 1, 169, 0, 0, 0, 5650.8, 4551.02, -134.77, 1.18682, 120, 0, 0, 0, 0, 0, 0, 0, 0, 0),

-- Soo-jam 29037
(@CGUID+17, @SOO_JAM, 571, 3711, 4291, 1, 1, 169, 0, 0, 0, 5677.12, 4574.54, -136.465, 2.70526, 120, 0, 0, 0, 0, 0, 0, 0, 0, 0),

-- Gorloc Hatchling 28140
(@CGUID+18, @GORLOC_HATCHLING, 571, 3711, 4291, 1, 1, 169, 0, 0, 0, 5656.04, 4575.9, -136.926, 2.59045, 120, 0, 0, 0, 0, 2, 0, 0, 0, 0), 
(@CGUID+19, @GORLOC_HATCHLING, 571, 3711, 4291, 1, 1, 169, 0, 0, 0, 5661.13, 4572.51, -136.661, 2.59883, 120, 0, 0, 0, 0, 0, 0, 0, 0, 0), 
(@CGUID+20, @GORLOC_HATCHLING, 571, 3711, 4291, 1, 1, 169, 0, 0, 0, 5624.63, 4620.05, -136.615, 2.78957, 120, 0, 0, 0, 0, 2, 0, 0, 0, 0), 
(@CGUID+21, @GORLOC_HATCHLING, 571, 3711, 4291, 1, 1, 169, 0, 0, 0, 5627.22, 4621.59, -135.748, 1.93661, 120, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Rainspeaker Oracle 28025
DELETE FROM `smart_scripts` WHERE `entryorguid` = @RAINSPEAKER_ORACLE AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(@RAINSPEAKER_ORACLE, 0, 1, 0, 0, 0, 100, 0, 3000, 6000, 12000, 15000, 11, 54919, 1, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'Rainspeaker Oracle - Combat - Cast \'Warped Armor\''),
(@RAINSPEAKER_ORACLE, 0, 0, 0, 0, 0, 100, 0, 0, 0, 6000, 8000, 11, 15305, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Rainspeaker Oracle - Combat CMC - Cast \'Chain Lightning\'');

DELETE FROM `creature_template_addon` WHERE `entry` = @RAINSPEAKER_ORACLE;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(@RAINSPEAKER_ORACLE, 0, 0, 0, 1, 0, '50503');

DELETE FROM `creature_addon` WHERE `guid`  BETWEEN @CGUID+0 AND @CGUID+21;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(@CGUID+5, 0, 0, 0, 1, 0, '50917'),
(@CGUID+9, 0, 0, 0, 1, 0, '50503 52102'),
(@CGUID+10, (@CGUID+10)*10, 0, 0, 1, 0, '50503'),
(@CGUID+18, (@CGUID+18)*10, 0, 0, 1, 0, ''),
(@CGUID+20, (@CGUID+20)*10, 0, 0, 1, 0, '');

DELETE FROM `waypoint_data` WHERE `id` BETWEEN (@CGUID+0)*10 AND (@CGUID+21)*10;
INSERT INTO `waypoint_data` (`id`,  `point`,  `position_x`,  `position_y`,  `position_z`,  `orientation`,  `delay`,  `move_type`,  `action`,  `action_chance`,  `wpguid`) VALUES
-- Rainspeaker Oracle 28025
((@CGUID+10)*10, 1, 5679.99, 4590.96, -132.93721, 0, 0, 0, 0, 100, 0), 
((@CGUID+10)*10, 2, 5675.27, 4589.44, -134.1824, 0, 0, 0, 0, 100, 0), 
((@CGUID+10)*10, 3, 5668.6, 4589.15, -135.35994, 0, 0, 0, 0, 100, 0), 
((@CGUID+10)*10, 4, 5654.38, 4585.51, -137.00487, 0, 0, 0, 0, 100, 0), 
((@CGUID+10)*10, 5, 5640.44, 4580.92, -137.8956, 0, 0, 0, 0, 100, 0), 
((@CGUID+10)*10, 6, 5625.67, 4573.76, -137.72597, 3.587935, 44000, 0, 0, 100, 0), 
((@CGUID+10)*10, 7, 5666.5, 4584.35, -135.527023, 0, 0, 0, 0, 100, 0), 
((@CGUID+10)*10, 8, 5674.51, 4587.64, -134.1678, 0, 0, 0, 0, 100, 0), 
((@CGUID+10)*10, 9, 5683.53, 4590.78, -131.7372, 0, 0, 0, 0, 100, 0), 
((@CGUID+10)*10, 10, 5690.72, 4589.44, -128.3787, 0, 0, 0, 0, 100, 0), 
((@CGUID+10)*10, 11, 5696.66, 4590.06, -126.0691, 0, 0, 0, 0, 100, 0), 
((@CGUID+10)*10, 12, 5701.81, 4585.19, -123.53, 0, 0, 0, 0, 100, 0), 
((@CGUID+10)*10, 13, 5706.38, 4580.21, -123.533, 5.510735, 5000, 0, 0, 100, 0), 
((@CGUID+10)*10, 14, 5700.29, 4588.07, -124.5226, 0, 0, 0, 0, 100, 0), 
((@CGUID+10)*10, 15, 5693.28, 4590.84, -127.2664, 0, 0, 0, 0, 100, 0),

-- Gorloc Hatchling 28140
((@CGUID+18)*10, 1, 5644.319, 4576.936, -137.5806, 0, 0, 1, 0, 100, 0),
((@CGUID+18)*10, 2, 5638.84, 4568.433, -136.2946, 0, 0, 1, 0, 100, 0),  
((@CGUID+18)*10, 3, 5645.927, 4563.697, -134.5595, 0, 0, 1, 0, 100, 0),  
((@CGUID+18)*10, 4, 5647.915, 4559.261, -134.718, 0, 0, 1, 0, 100, 0), 
((@CGUID+18)*10, 5, 5651.191, 4556.217, -134.9234, 0, 0, 1, 0, 100, 0), 
((@CGUID+18)*10, 6, 5651.055, 4556.367, -134.907, -1.180158, 5000, 1, 0, 100, 0), 
((@CGUID+18)*10, 7, 5647.481, 4565.141, -134.7267, 0, 0, 1, 0, 100, 0), 
((@CGUID+18)*10, 8, 5646.31, 4573.453, -136.2494, 0, 0, 1, 0, 100, 0),  
((@CGUID+18)*10, 9, 5645.609, 4575.69, -137.1013, 0, 0, 1, 0, 100, 0), 
((@CGUID+18)*10, 10, 5639.298, 4593.181, -137.8943, 0, 0, 1, 0, 100, 0),  
((@CGUID+18)*10, 11, 5637.869, 4594.209, -137.2863, 0, 0, 1, 0, 100, 0),  
((@CGUID+18)*10, 12, 5632.94, 4607.9, -136.4941, 0, 0, 1, 0, 100, 0), 
((@CGUID+18)*10, 13, 5644.7, 4612.21, -134.3754, 0, 0, 1, 0, 100, 0), 
((@CGUID+18)*10, 14, 5655.58, 4611.05, -133.57, 0, 0, 1, 0, 100, 0),  
((@CGUID+18)*10, 15, 5657.35, 4599.22, -133.823, 0, 0, 1, 0, 100, 0),  
((@CGUID+18)*10, 16, 5668.229, 4587.609, -135.3249, 0, 0, 1, 0, 100, 0),  
((@CGUID+18)*10, 17, 5670.453, 4582.749, -135.7242, 0, 0, 1, 0, 100, 0), 
((@CGUID+18)*10, 18, 5670.407, 4583.263, -135.705, 0, 0, 1, 0, 100, 0),  
((@CGUID+18)*10, 19, 5671.084, 4581.417, -136.0851, 1.239184, 5000, 1, 0, 100, 0), 
((@CGUID+18)*10, 20, 5679.567, 4580.654, -135.5253, 0, 0, 1, 0, 100, 0),  
((@CGUID+18)*10, 21, 5687.424, 4577.399, -133.4737, 0, 0, 1, 0, 100, 0),  
((@CGUID+18)*10, 22, 5685.118, 4578.022, -134.1392, 0, 0, 1, 0, 100, 0), 
((@CGUID+18)*10, 23, 5687.757, 4576.253, -133.4411, 0, 0, 1, 0, 100, 0), 
((@CGUID+18)*10, 24, 5692.792, 4571.287, -132.7483, 0, 0, 1, 0, 100, 0), 
((@CGUID+18)*10, 25, 5681.454, 4563.914, -133.3785, 0, 0, 1, 0, 100, 0), 
((@CGUID+18)*10, 26, 5679.277, 4564.363, -133.8808, 0, 0, 1, 0, 100, 0), 
((@CGUID+18)*10, 27, 5679.277, 4564.363, -133.8808, 0, 0, 1, 0, 100, 0),  
((@CGUID+18)*10, 28, 5679.277, 4564.363, -133.8808, 0, 0, 1, 0, 100, 0),  
((@CGUID+18)*10, 29, 5679.96, 4564.386, -133.9235, 0, 0, 1, 0, 100, 0), 
((@CGUID+18)*10, 31, 5669.771, 4568.154, -135.5617, 0, 0, 1, 0, 100, 0),  
((@CGUID+18)*10, 32, 5668.13, 4569.363, -136.0065, 0, 0, 1, 0, 100, 0),  
((@CGUID+18)*10, 33, 5655.424, 4576.534, -136.9512, 0, 0, 1, 0, 100, 0),
((@CGUID+20)*10, 1, 5610.237, 4623.722, -136.8926, 0, 5000, 1, 0, 100, 0), 
((@CGUID+20)*10, 2, 5583.471, 4620.045, -136.7318, 0, 0, 1, 0, 100, 0), 
((@CGUID+20)*10, 3, 5578.35, 4619.76, -137.1664, 0, 0, 1, 0, 100, 0), 
((@CGUID+20)*10, 4, 5571.47, 4620.69, -135.8390, 0, 0, 1, 0, 100, 0),  
((@CGUID+20)*10, 5, 5562.39, 4615.82, -135.9792, 0, 0, 1, 0, 100, 0),  
((@CGUID+20)*10, 6, 5553.25, 4607.99, -134.1128, 0, 0, 1, 0, 100, 0), 
((@CGUID+20)*10, 7, 5554.68, 4594.02, -132.8341, 0, 0, 1, 0, 100, 0),  
((@CGUID+20)*10, 8, 5563.08, 4592.23, -134.6387, 0, 0, 1, 0, 100, 0),  
((@CGUID+20)*10, 9, 5586.95, 4590.63, -138.08598, 0, 0, 1, 0, 100, 0),  
((@CGUID+20)*10, 10, 5563.08, 4592.23, -134.6387, 0, 0, 1, 0, 100, 0), 
((@CGUID+20)*10, 11, 5554.68, 4594.02, -132.8341, 0, 0, 1, 0, 100, 0), 
((@CGUID+20)*10, 12, 5554.66, 4571.01, -135.2915, 0, 0, 1, 0, 100, 0),  
((@CGUID+20)*10, 13, 5569.5, 4555.18, -137.2710, 0, 0, 1, 0, 100, 0),  
((@CGUID+20)*10, 14, 5594.29, 4553.65, -135.2333, 0, 0, 1, 0, 100, 0), 
((@CGUID+20)*10, 15, 5602.62, 4561.788, -132.6895, 2.391101, 10000, 1, 0, 100, 0), 
((@CGUID+20)*10, 16, 5581.576, 4572.833, -138.8004, 0, 0, 1, 0, 100, 0),  
((@CGUID+20)*10, 17, 5585.405, 4575.31, -139.9832, 0, 0, 1, 0, 100, 0),  
((@CGUID+20)*10, 18, 5598.865, 4583.062, -140.2127, 0, 0, 1, 0, 100, 0), 
((@CGUID+20)*10, 19, 5607.08, 4592.83, -139.9805, 0, 0, 1, 0, 100, 0),
((@CGUID+20)*10, 20, 5615.54, 4597.89, -139.7706, 0, 0, 1, 0, 100, 0), 
((@CGUID+20)*10, 21, 5627.64, 4601.06, -137.0475, 4.994937, 5000, 1, 0, 100, 0), 
((@CGUID+20)*10, 22, 5638.07, 4628.11, -135.8936, 0, 0, 1, 0, 100, 0); 

-- Gorloc Hatchling 28140
DELETE FROM `creature_formations` WHERE `leaderGUID` BETWEEN @CGUID+0 AND @CGUID+21;
INSERT INTO `creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`, `point_1`, `point_2`) VALUES
(@CGUID+18, @CGUID+18, 0, 0, 512, 0, 0),
(@CGUID+18, @CGUID+19, 2, 0, 512, 0, 0),
(@CGUID+20, @CGUID+20, 0, 0, 512, 0, 0),
(@CGUID+20, @CGUID+21, 2, 0, 512, 0, 0);
