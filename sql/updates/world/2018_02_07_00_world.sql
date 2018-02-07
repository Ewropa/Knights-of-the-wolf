-- Kadu <Exodar Quartermaster> 50306
SET @KADU := 50306;

UPDATE `creature` SET `position_x` = -3869.003, `position_y` = -11645.96, `position_z` = -137.5808, `orientation` = 1.762783, `spawntimesecs` = 120 WHERE `id` = @KADU;

DELETE FROM `npc_vendor` WHERE `entry` = @KADU;
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `type`, `VerifiedBuild`) VALUES 
(@KADU, 0, 45580, 0, 0, 0, 1, 0),
(@KADU, 0, 64889, 0, 0, 0, 1, 0),
(@KADU, 0, 64890, 0, 0, 0, 1, 0),
(@KADU, 0, 64891, 0, 0, 0, 1, 0),
(@KADU, 0, 67527, 0, 0, 0, 1, 0);

DELETE FROM `creature_addon` WHERE `guid`= `guid` IN (SELECT `guid` FROM `creature` WHERE `id` = @KADU);

DELETE FROM `creature_template_addon` WHERE `entry` = @KADU;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `auras`) VALUES 
(@KADU, 0, 29255, 0, 1, 0, 0, 0, 0, '');