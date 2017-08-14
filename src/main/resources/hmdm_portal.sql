/*
Navicat MySQL Data Transfer

Source Server         : Joe
Source Server Version : 50716
Source Host           : localhost:3306
Source Database       : hmdm_portal

Target Server Type    : MYSQL
Target Server Version : 50716
File Encoding         : 65001

Date: 2017-08-14 10:11:44
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `act_ge_bytearray`
-- ----------------------------
DROP TABLE IF EXISTS `act_ge_bytearray`;
CREATE TABLE `act_ge_bytearray` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `BYTES_` longblob,
  `GENERATED_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_BYTEARR_DEPL` (`DEPLOYMENT_ID_`),
  CONSTRAINT `ACT_FK_BYTEARR_DEPL` FOREIGN KEY (`DEPLOYMENT_ID_`) REFERENCES `act_re_deployment` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of act_ge_bytearray
-- ----------------------------
INSERT INTO `act_ge_bytearray` VALUES ('2', '1', 'activiti/suggestId.bpmn20.xml', '1', 0x3C3F786D6C2076657273696F6E3D27312E302720656E636F64696E673D275554462D38273F3E0A3C646566696E6974696F6E7320786D6C6E733D22687474703A2F2F7777772E6F6D672E6F72672F737065632F42504D4E2F32303130303532342F4D4F44454C2220786D6C6E733A7873693D22687474703A2F2F7777772E77332E6F72672F323030312F584D4C536368656D612D696E7374616E63652220786D6C6E733A7873643D22687474703A2F2F7777772E77332E6F72672F323030312F584D4C536368656D612220786D6C6E733A61637469766974693D22687474703A2F2F61637469766974692E6F72672F62706D6E2220786D6C6E733A62706D6E64693D22687474703A2F2F7777772E6F6D672E6F72672F737065632F42504D4E2F32303130303532342F44492220786D6C6E733A6F6D6764633D22687474703A2F2F7777772E6F6D672E6F72672F737065632F44442F32303130303532342F44432220786D6C6E733A6F6D6764693D22687474703A2F2F7777772E6F6D672E6F72672F737065632F44442F32303130303532342F44492220747970654C616E67756167653D22687474703A2F2F7777772E77332E6F72672F323030312F584D4C536368656D61222065787072657373696F6E4C616E67756167653D22687474703A2F2F7777772E77332E6F72672F313939392F585061746822207461726765744E616D6573706163653D2264656D6F223E0A20203C70726F636573732069643D2273756767657374496422206E616D653D227375676765737450726F636573732220697345786563757461626C653D2274727565223E0A202020203C73746172744576656E742069643D227374617274222F3E0A202020203C757365725461736B2069643D227461736B3122206E616D653D22E58F8DE9A688E5AEA1E6A0B8222061637469766974693A63616E64696461746555736572733D22237B7573657249647D222F3E0A202020203C656E644576656E742069643D22656E64222F3E0A202020203C73657175656E6365466C6F772069643D227369642D33333637464146422D463343352D344339452D393537382D3830363330413136384343362220736F757263655265663D227461736B3122207461726765745265663D22656E64222F3E0A202020203C73657175656E6365466C6F772069643D226C696E65312220736F757263655265663D22737461727422207461726765745265663D227461736B31222F3E0A20203C2F70726F636573733E0A20203C62706D6E64693A42504D4E4469616772616D2069643D2242504D4E4469616772616D5F737567676573744964223E0A202020203C62706D6E64693A42504D4E506C616E652062706D6E456C656D656E743D22737567676573744964222069643D2242504D4E506C616E655F737567676573744964223E0A2020202020203C62706D6E64693A42504D4E53686170652062706D6E456C656D656E743D227374617274222069643D2242504D4E53686170655F7374617274223E0A20202020202020203C6F6D6764633A426F756E6473206865696768743D2233302E30222077696474683D2233302E302220783D2239322E33333333323832343730373033312220793D223131372E30222F3E0A2020202020203C2F62706D6E64693A42504D4E53686170653E0A2020202020203C62706D6E64693A42504D4E53686170652062706D6E456C656D656E743D227461736B31222069643D2242504D4E53686170655F7461736B31223E0A20202020202020203C6F6D6764633A426F756E6473206865696768743D2238302E30222077696474683D223130302E302220783D223136372E333333333238323437303730332220793D2239322E30222F3E0A2020202020203C2F62706D6E64693A42504D4E53686170653E0A2020202020203C62706D6E64693A42504D4E53686170652062706D6E456C656D656E743D22656E64222069643D2242504D4E53686170655F656E64223E0A20202020202020203C6F6D6764633A426F756E6473206865696768743D2232382E30222077696474683D2232382E302220783D223331322E333333333238323437303730332220793D223131382E30222F3E0A2020202020203C2F62706D6E64693A42504D4E53686170653E0A2020202020203C62706D6E64693A42504D4E456467652062706D6E456C656D656E743D227369642D33333637464146422D463343352D344339452D393537382D383036333041313638434336222069643D2242504D4E456467655F7369642D33333637464146422D463343352D344339452D393537382D383036333041313638434336223E0A20202020202020203C6F6D6764693A776179706F696E7420783D223236372E333333333238323437303730332220793D223133322E30222F3E0A20202020202020203C6F6D6764693A776179706F696E7420783D223331322E333333333238323437303730332220793D223133322E30222F3E0A2020202020203C2F62706D6E64693A42504D4E456467653E0A2020202020203C62706D6E64693A42504D4E456467652062706D6E456C656D656E743D226C696E6531222069643D2242504D4E456467655F6C696E6531223E0A20202020202020203C6F6D6764693A776179706F696E7420783D223132322E33333333323832343730373033312220793D223133322E30222F3E0A20202020202020203C6F6D6764693A776179706F696E7420783D223136372E333333333238323437303730332220793D223133322E30222F3E0A2020202020203C2F62706D6E64693A42504D4E456467653E0A202020203C2F62706D6E64693A42504D4E506C616E653E0A20203C2F62706D6E64693A42504D4E4469616772616D3E0A3C2F646566696E6974696F6E733E, '0');
INSERT INTO `act_ge_bytearray` VALUES ('3', '1', 'activiti/suggestId.suggestId.png', '1', 0x89504E470D0A1A0A0000000D49484452000001070000005F0806000000E5010289000009DF4944415478DAED9D7D5014E71DC79F0A3568990963A9C330CC948ECE4866F8C336F6800035440CB439A736351DFEA00C33B1D6B4D8A44A3246A73A29D6378C3781201131364D626C6222895A5F987AA344114545696A1262494A1392508A44E0C4A3FCFAECDE42F68E23722FBBFCF6FAFDCC7C06B897656FF779BEF73CBBCFEE230400000000000000000000000000EB424431555555A54545452D369BCD15131343CAC33034A3A2A28667CD9AD59599997958FECC4149039662F7EEDDCB737272FA939393A9ACECF7E4749E20976B40E6C5300C51653B36369EA1F2F2AD3467CE9CC1C4C4C416B9C95351EA007B6A6B77D525242490C3B19DDCEE4159A0FF0B0DB4B2B282E2E2E206A64F9FFE63943EC03A1866CF9E2DBFD94ECB823B044DB2B5F532C5C7C77F2177811DA51030EC4AD42C575A0C8D8D6FCB02EBF6B2A66607D9EDF99497B780162C984F0B7373A8B2C231E67530785B5B5B68DAB4693DE8620076071F7372E6F73B1CDBE4AFB7BCDCF37C0D3DF0A33CFAE9838B5417D97F48B9B9F75246C6F7A9420D885B304C96976FEE8E8E8E3E811209D85055F54C6972F2B7C9EDEE978574D0CBFCBC5C3514162ECC19F5FEFBEFA3CC7BD26440D8C6BC1E86E68C19333AE42E4947A9042C282A2A6C292B5B2F0BE7CD316665A6D3F6A737D3C1B75EA7AA671D6A8B213B2B437D5CF9DDEDEEF3FB3E189C2B56FCFABCDC25E52895800536DB3C97D3794C164ED7181F7EB8883A3FEEA086537FA5237F7993FEF4422DD51D78953E687B977EF5C8521A1AEAF3FB3E189C274FD67F2277C979944AC002658093CBD52D0B67FF18D7AE7982CE369EA2A6B30D74F1C23955E5F7A6A6D3B476ED137EDF038357D90F7297B8512A01A363927D6374BBAFD39A35A5B4EC17C574EEDC196ABD7249F5C285265A51F24B5AB5B2846EDEECF6FB5E18BCC2339A12002EE170C3CBC1C16EDABFFF45B2D9BE476DEF5FA595BF2DF1B2B9F92CCDBB7B2EBDFC52ADFCB6EB1AF37E18BC0807C02C1CBE187578B897DE7A731FDD9361A36B6DEFD195CB17A9FEF8613AF0C69F69EFCB7FA4DA5D3B6470EC55BB18696977D3BE7D7B6868A8C76B193078110E805938F48EDA70EAA83A9641098413278ED31BAFEF534361CFF33BE9B9EA0A726CDF429B363EA51E9CACDEF10CDD3B3F8B0E1F7AD56B193078110E8059385C1F75ED9AC7D533124A08ECAEAD56DDF95C2555563C4DDBCA37D21F36ACA775BF5B4DA5AB7E43EBD73D2983E1003D5EFAA8D73260F0221C00B370E819550907E5B4E5434B7E42AFEC7D410D052528B66C2EA30D65EB68EB960D6A402881617F209F8E1F3BA485430F0C830807C02C1CFE336A4BCBDBF4E4EA55F4B38716AB955FE94EF8333D7D1EFDBCB0406D4534379FF45A060C5E840360160EDD5EBA6F7D467D7D1D54BEF529CACFBB8FB232D3D41191E969F3284386C2FC1F64D2638F2EA7DEDE8FD4D7FABE1F062FC201300B877F4326221C00B370E8824C44380066E1F0396422C201300B87CF2013110E8059387C0A99887000CCC2A1133211E1009885C327908908073E24494BA4AF49DBA437B49DE392B64B0F484BB5D74570387C0C9918C1E16099BAB6585AAFADE42EE912698A34567B5EF9992C3CB70B7768AF734A0B23331CFE05991881E13052D75C62E2B3834D4A5D532AFC1169AB56F1A303786FBEF0DCC2AB413A3BB2C2A103323182C261A4AE853285A06975AD40DAA9355DA243584E89B69CC2C809877F42264648382875ADCBA7A2BBB5B0582A3CF373C46BAF8DD35AED055A97C3B78571C3E8BA66D7FA35E1BAEDF75C6D794B23231C3E824C8C8070B06B41A00F8572AD25311112B4D7BB7D4262A95129D61EC0CA05D26C6A8F8016842C941F42265A3C1C0A7C2AF55511FC2C5EA95AF75F1F1085E1AEC09DC2B88942E66ACB4FB17638B443265A381C927DBA120DBAAE43B0C4690733F55D8CB0D5B57AED18839194681BC2C2E1F00FC8440B8743BD4F8B213E4CCB8DF3694184A5AE2DD6161A63C286B964E1EE852C94D720132D1A0E8B7D8E31847B42E0549FEE4A613892CCAC69CD732DDC7A9085F203C8448B8683BED560D4747E9BC2D57A48D20E16469BB881DA0C38E819EA0ECB9A5838B44126320B878994A124DDB7BA5B1837C251398BA13FCD19745D538E03549BBC21CB4D38BE11508B40B3FE36076465A17C1F329159384CA40C95E85E77D0E0F5794DF7BF4A4359C8129337A4DD848D13CC8E1DF1C838DF02B250BE0799C8341CBEAA0CE92B6CB1C1EB53108E20529AF8660F71569A391D8C77ACFE5B20CB3B1CDE65E378EB6DD6F34C3EBF95CA509BEEF15483D72745F7BF82AE6BCAF9D058933764ACD627E2BE63F5DF02E99E8A71958DFED647FF98D1CF73F8FC162B4303BABFE30D5E9F38DDFF7285F2A1386E4C9612FD9D8DFED647FF98D1CF73F8FC16D6EC3A8696439883EABCF0BE225516CA77D8E86F7DF48F19FD3C87CF6FB13274C36A2D071C73B87D28E88E39FC8D8DFED647FF98D1CF73F8FC162B43963BE680B3155F6EC446E119C1163DFEA9CC5636FA5B1FFD63463FCFE1F35BAC0C59EE6C05C6398CDF52F0130E57D8E86F7DF48F19FD3C87CF6FB13264B9710E182119C0B703D165368E7FD0D49CE7997C7E2B61B9119242E0DA8A00C2A1053251E0DA8AF108DBB515427C7955A619AD07A5F965E1AB322F41260A5C95E98FB05F95A9E014E6DDCF21DABAE17011325158F77E0E4E61DEFD1CC252D7947E09EE0475DB70B8009928702728DF6030EC4E5023A73F700FC9AF0C8766C844817B48EABB1286DE4372846261CCDDA7570BEB834A897008775DF377F7E98400CE4A6C1263EF3EBDDAE854EB12E19BB7A2584406A894080723EA5A8F183B6FC541ADDE8C376FC52BC27B38F64857C294BA96ACF56194E64A7E80EF554E57366A7DA9141139A052221C8CAC6BA1CE78657A5D5BA2ADB8D235A8D64EC528D762F8CE9599AF3589DAB4152DB6F059098403C2613218A96BEE004361D2EB9A329AEB31E11996A904C5C8082CE56787D60C2A15D61CF9887040387002750DE100110E00E100110E00E100110E00E100110E00201C100E00201C100E00201C100E00201C100E00201C100E00201C100E00201C20C201201C20C201201C20C201201C20C201201C20C201FCDF70C71D53875DAE33A8980C1C1838FDA1F0DC140580C9E7AEBBBEF3A9D3B9139593817575DB0E09CF0449004C3ED9D9DFDD5F56F6082A2703172DCADE2B8C9B4E0E80C0484AFAA62D2969E62DB7BB091574726D9F3265CA3BC2B8099800089CC4C46F353B1C2B51412751BB3DBB46786EC40A002B52EEBCF31BFD8D8D7B50512741A7B3A64E78E642494551041CC99D3973C6750484F9C120BB13D7E4F6B7A30802D6013175EAD77B376E2CE9C63108E38F31685D894E0403B04C17232AEA6BC76263A77FBE6CD983178F1E7DB613E320C2378E41395DA99C95D00E3ED6A32B01AC8832597099F0CC3E343201090C4D658093328E41395D89B3120000000000000000000000000000000000000000000000C6E77FB8CCFA513E8C35A60000000049454E44AE426082, '1');

-- ----------------------------
-- Table structure for `act_ge_property`
-- ----------------------------
DROP TABLE IF EXISTS `act_ge_property`;
CREATE TABLE `act_ge_property` (
  `NAME_` varchar(64) COLLATE utf8_bin NOT NULL,
  `VALUE_` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `REV_` int(11) DEFAULT NULL,
  PRIMARY KEY (`NAME_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of act_ge_property
-- ----------------------------
INSERT INTO `act_ge_property` VALUES ('next.dbid', '1801', '19');
INSERT INTO `act_ge_property` VALUES ('schema.history', 'create(5.14)', '1');
INSERT INTO `act_ge_property` VALUES ('schema.version', '5.14', '1');

-- ----------------------------
-- Table structure for `act_hi_actinst`
-- ----------------------------
DROP TABLE IF EXISTS `act_hi_actinst`;
CREATE TABLE `act_hi_actinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `ACT_ID_` varchar(255) COLLATE utf8_bin NOT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CALL_PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACT_NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ACT_TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_TIME_` datetime NOT NULL,
  `END_TIME_` datetime DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_ACT_INST_START` (`START_TIME_`),
  KEY `ACT_IDX_HI_ACT_INST_END` (`END_TIME_`),
  KEY `ACT_IDX_HI_ACT_INST_PROCINST` (`PROC_INST_ID_`,`ACT_ID_`),
  KEY `ACT_IDX_HI_ACT_INST_EXEC` (`EXECUTION_ID_`,`ACT_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of act_hi_actinst
-- ----------------------------
INSERT INTO `act_hi_actinst` VALUES ('1002', 'suggestId:1:4', '1001', '1001', 'start', null, null, null, 'startEvent', null, '2017-08-11 15:20:41', '2017-08-11 15:20:41', '11');
INSERT INTO `act_hi_actinst` VALUES ('1004', 'suggestId:1:4', '1001', '1001', 'task1', '1005', null, '反馈审核', 'userTask', null, '2017-08-11 15:20:41', null, null);
INSERT INTO `act_hi_actinst` VALUES ('102', 'suggestId:1:4', '101', '101', 'start', null, null, null, 'startEvent', null, '2017-08-11 11:42:10', '2017-08-11 11:42:10', '11');
INSERT INTO `act_hi_actinst` VALUES ('104', 'suggestId:1:4', '101', '101', 'task1', '105', null, '反馈审核', 'userTask', null, '2017-08-11 11:42:10', null, null);
INSERT INTO `act_hi_actinst` VALUES ('1102', 'suggestId:1:4', '1101', '1101', 'start', null, null, null, 'startEvent', null, '2017-08-11 15:24:49', '2017-08-11 15:24:49', '13');
INSERT INTO `act_hi_actinst` VALUES ('1104', 'suggestId:1:4', '1101', '1101', 'task1', '1105', null, '反馈审核', 'userTask', null, '2017-08-11 15:24:49', null, null);
INSERT INTO `act_hi_actinst` VALUES ('1202', 'suggestId:1:4', '1201', '1201', 'start', null, null, null, 'startEvent', null, '2017-08-11 15:30:18', '2017-08-11 15:30:18', '11');
INSERT INTO `act_hi_actinst` VALUES ('1204', 'suggestId:1:4', '1201', '1201', 'task1', '1205', null, '反馈审核', 'userTask', null, '2017-08-11 15:30:18', null, null);
INSERT INTO `act_hi_actinst` VALUES ('1302', 'suggestId:1:4', '1301', '1301', 'start', null, null, null, 'startEvent', null, '2017-08-11 15:33:53', '2017-08-11 15:33:53', '11');
INSERT INTO `act_hi_actinst` VALUES ('1304', 'suggestId:1:4', '1301', '1301', 'task1', '1305', null, '反馈审核', 'userTask', null, '2017-08-11 15:33:53', null, null);
INSERT INTO `act_hi_actinst` VALUES ('1402', 'suggestId:1:4', '1401', '1401', 'start', null, null, null, 'startEvent', null, '2017-08-11 15:36:25', '2017-08-11 15:36:25', '11');
INSERT INTO `act_hi_actinst` VALUES ('1404', 'suggestId:1:4', '1401', '1401', 'task1', '1405', null, '反馈审核', 'userTask', null, '2017-08-11 15:36:25', null, null);
INSERT INTO `act_hi_actinst` VALUES ('1411', 'suggestId:1:4', '1410', '1410', 'start', null, null, null, 'startEvent', null, '2017-08-11 15:38:47', '2017-08-11 15:38:47', '0');
INSERT INTO `act_hi_actinst` VALUES ('1413', 'suggestId:1:4', '1410', '1410', 'task1', '1414', null, '反馈审核', 'userTask', null, '2017-08-11 15:38:47', null, null);
INSERT INTO `act_hi_actinst` VALUES ('1420', 'suggestId:1:4', '1419', '1419', 'start', null, null, null, 'startEvent', null, '2017-08-11 15:43:05', '2017-08-11 15:43:05', '0');
INSERT INTO `act_hi_actinst` VALUES ('1422', 'suggestId:1:4', '1419', '1419', 'task1', '1423', null, '反馈审核', 'userTask', null, '2017-08-11 15:43:05', null, null);
INSERT INTO `act_hi_actinst` VALUES ('1502', 'suggestId:1:4', '1501', '1501', 'start', null, null, null, 'startEvent', null, '2017-08-11 16:19:48', '2017-08-11 16:19:48', '7');
INSERT INTO `act_hi_actinst` VALUES ('1504', 'suggestId:1:4', '1501', '1501', 'task1', '1505', null, '反馈审核', 'userTask', null, '2017-08-11 16:19:48', null, null);
INSERT INTO `act_hi_actinst` VALUES ('1602', 'suggestId:1:4', '1601', '1601', 'start', null, null, null, 'startEvent', null, '2017-08-11 16:24:14', '2017-08-11 16:24:14', '11');
INSERT INTO `act_hi_actinst` VALUES ('1604', 'suggestId:1:4', '1601', '1601', 'task1', '1605', null, '反馈审核', 'userTask', null, '2017-08-11 16:24:14', null, null);
INSERT INTO `act_hi_actinst` VALUES ('1611', 'suggestId:1:4', '1610', '1610', 'start', null, null, null, 'startEvent', null, '2017-08-11 16:26:20', '2017-08-11 16:26:20', '0');
INSERT INTO `act_hi_actinst` VALUES ('1613', 'suggestId:1:4', '1610', '1610', 'task1', '1614', null, '反馈审核', 'userTask', null, '2017-08-11 16:26:20', null, null);
INSERT INTO `act_hi_actinst` VALUES ('1620', 'suggestId:1:4', '1619', '1619', 'start', null, null, null, 'startEvent', null, '2017-08-11 16:27:48', '2017-08-11 16:27:48', '0');
INSERT INTO `act_hi_actinst` VALUES ('1622', 'suggestId:1:4', '1619', '1619', 'task1', '1623', null, '反馈审核', 'userTask', null, '2017-08-11 16:27:48', null, null);
INSERT INTO `act_hi_actinst` VALUES ('1702', 'suggestId:1:4', '1701', '1701', 'start', null, null, null, 'startEvent', null, '2017-08-11 17:46:47', '2017-08-11 17:46:47', '9');
INSERT INTO `act_hi_actinst` VALUES ('1704', 'suggestId:1:4', '1701', '1701', 'task1', '1705', null, '反馈审核', 'userTask', null, '2017-08-11 17:46:47', null, null);
INSERT INTO `act_hi_actinst` VALUES ('1711', 'suggestId:1:4', '1710', '1710', 'start', null, null, null, 'startEvent', null, '2017-08-11 17:48:39', '2017-08-11 17:48:39', '0');
INSERT INTO `act_hi_actinst` VALUES ('1713', 'suggestId:1:4', '1710', '1710', 'task1', '1714', null, '反馈审核', 'userTask', null, '2017-08-11 17:48:39', null, null);
INSERT INTO `act_hi_actinst` VALUES ('1720', 'suggestId:1:4', '1719', '1719', 'start', null, null, null, 'startEvent', null, '2017-08-11 17:51:09', '2017-08-11 17:51:09', '0');
INSERT INTO `act_hi_actinst` VALUES ('1722', 'suggestId:1:4', '1719', '1719', 'task1', '1723', null, '反馈审核', 'userTask', null, '2017-08-11 17:51:09', null, null);
INSERT INTO `act_hi_actinst` VALUES ('202', 'suggestId:1:4', '201', '201', 'start', null, null, null, 'startEvent', null, '2017-08-11 11:44:11', '2017-08-11 11:44:11', '11');
INSERT INTO `act_hi_actinst` VALUES ('204', 'suggestId:1:4', '201', '201', 'task1', '205', null, '反馈审核', 'userTask', null, '2017-08-11 11:44:11', null, null);
INSERT INTO `act_hi_actinst` VALUES ('302', 'suggestId:1:4', '301', '301', 'start', null, null, null, 'startEvent', null, '2017-08-11 11:45:37', '2017-08-11 11:45:37', '13');
INSERT INTO `act_hi_actinst` VALUES ('304', 'suggestId:1:4', '301', '301', 'task1', '305', null, '反馈审核', 'userTask', null, '2017-08-11 11:45:37', null, null);
INSERT INTO `act_hi_actinst` VALUES ('402', 'suggestId:1:4', '401', '401', 'start', null, null, null, 'startEvent', null, '2017-08-11 13:38:25', '2017-08-11 13:38:25', '12');
INSERT INTO `act_hi_actinst` VALUES ('404', 'suggestId:1:4', '401', '401', 'task1', '405', null, '反馈审核', 'userTask', null, '2017-08-11 13:38:25', null, null);
INSERT INTO `act_hi_actinst` VALUES ('502', 'suggestId:1:4', '501', '501', 'start', null, null, null, 'startEvent', null, '2017-08-11 13:41:18', '2017-08-11 13:41:18', '12');
INSERT INTO `act_hi_actinst` VALUES ('504', 'suggestId:1:4', '501', '501', 'task1', '505', null, '反馈审核', 'userTask', null, '2017-08-11 13:41:18', null, null);
INSERT INTO `act_hi_actinst` VALUES ('602', 'suggestId:1:4', '601', '601', 'start', null, null, null, 'startEvent', null, '2017-08-11 13:47:37', '2017-08-11 13:47:37', '11');
INSERT INTO `act_hi_actinst` VALUES ('604', 'suggestId:1:4', '601', '601', 'task1', '605', null, '反馈审核', 'userTask', null, '2017-08-11 13:47:37', null, null);
INSERT INTO `act_hi_actinst` VALUES ('702', 'suggestId:1:4', '701', '701', 'start', null, null, null, 'startEvent', null, '2017-08-11 13:51:49', '2017-08-11 13:51:49', '8');
INSERT INTO `act_hi_actinst` VALUES ('704', 'suggestId:1:4', '701', '701', 'task1', '705', null, '反馈审核', 'userTask', null, '2017-08-11 13:51:49', null, null);
INSERT INTO `act_hi_actinst` VALUES ('802', 'suggestId:1:4', '801', '801', 'start', null, null, null, 'startEvent', null, '2017-08-11 15:12:37', '2017-08-11 15:12:37', '10');
INSERT INTO `act_hi_actinst` VALUES ('804', 'suggestId:1:4', '801', '801', 'task1', '805', null, '反馈审核', 'userTask', null, '2017-08-11 15:12:37', null, null);
INSERT INTO `act_hi_actinst` VALUES ('902', 'suggestId:1:4', '901', '901', 'start', null, null, null, 'startEvent', null, '2017-08-11 15:15:59', '2017-08-11 15:15:59', '11');
INSERT INTO `act_hi_actinst` VALUES ('904', 'suggestId:1:4', '901', '901', 'task1', '905', null, '反馈审核', 'userTask', null, '2017-08-11 15:15:59', null, null);

-- ----------------------------
-- Table structure for `act_hi_attachment`
-- ----------------------------
DROP TABLE IF EXISTS `act_hi_attachment`;
CREATE TABLE `act_hi_attachment` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `URL_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `CONTENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of act_hi_attachment
-- ----------------------------

-- ----------------------------
-- Table structure for `act_hi_comment`
-- ----------------------------
DROP TABLE IF EXISTS `act_hi_comment`;
CREATE TABLE `act_hi_comment` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TIME_` datetime NOT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACTION_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `MESSAGE_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `FULL_MSG_` longblob,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of act_hi_comment
-- ----------------------------

-- ----------------------------
-- Table structure for `act_hi_detail`
-- ----------------------------
DROP TABLE IF EXISTS `act_hi_detail`;
CREATE TABLE `act_hi_detail` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACT_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin NOT NULL,
  `VAR_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TIME_` datetime NOT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint(20) DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_DETAIL_PROC_INST` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_DETAIL_ACT_INST` (`ACT_INST_ID_`),
  KEY `ACT_IDX_HI_DETAIL_TIME` (`TIME_`),
  KEY `ACT_IDX_HI_DETAIL_NAME` (`NAME_`),
  KEY `ACT_IDX_HI_DETAIL_TASK_ID` (`TASK_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of act_hi_detail
-- ----------------------------

-- ----------------------------
-- Table structure for `act_hi_identitylink`
-- ----------------------------
DROP TABLE IF EXISTS `act_hi_identitylink`;
CREATE TABLE `act_hi_identitylink` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `GROUP_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_USER` (`USER_ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_TASK` (`TASK_ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_PROCINST` (`PROC_INST_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of act_hi_identitylink
-- ----------------------------
INSERT INTO `act_hi_identitylink` VALUES ('1006', null, 'candidate', 'Rose', '1005', null);
INSERT INTO `act_hi_identitylink` VALUES ('1007', null, 'participant', 'Rose', null, '1001');
INSERT INTO `act_hi_identitylink` VALUES ('1008', null, 'candidate', 'Lily', '1005', null);
INSERT INTO `act_hi_identitylink` VALUES ('1009', null, 'participant', 'Lily', null, '1001');
INSERT INTO `act_hi_identitylink` VALUES ('106', null, 'candidate', 'Rose', '105', null);
INSERT INTO `act_hi_identitylink` VALUES ('107', null, 'participant', 'Rose', null, '101');
INSERT INTO `act_hi_identitylink` VALUES ('108', null, 'candidate', 'Lily', '105', null);
INSERT INTO `act_hi_identitylink` VALUES ('109', null, 'participant', 'Lily', null, '101');
INSERT INTO `act_hi_identitylink` VALUES ('1106', null, 'candidate', 'Rose', '1105', null);
INSERT INTO `act_hi_identitylink` VALUES ('1107', null, 'participant', 'Rose', null, '1101');
INSERT INTO `act_hi_identitylink` VALUES ('1108', null, 'candidate', 'Lily', '1105', null);
INSERT INTO `act_hi_identitylink` VALUES ('1109', null, 'participant', 'Lily', null, '1101');
INSERT INTO `act_hi_identitylink` VALUES ('1206', null, 'candidate', 'Rose', '1205', null);
INSERT INTO `act_hi_identitylink` VALUES ('1207', null, 'participant', 'Rose', null, '1201');
INSERT INTO `act_hi_identitylink` VALUES ('1208', null, 'candidate', 'Lily', '1205', null);
INSERT INTO `act_hi_identitylink` VALUES ('1209', null, 'participant', 'Lily', null, '1201');
INSERT INTO `act_hi_identitylink` VALUES ('1306', null, 'candidate', 'Rose', '1305', null);
INSERT INTO `act_hi_identitylink` VALUES ('1307', null, 'participant', 'Rose', null, '1301');
INSERT INTO `act_hi_identitylink` VALUES ('1308', null, 'candidate', 'Lily', '1305', null);
INSERT INTO `act_hi_identitylink` VALUES ('1309', null, 'participant', 'Lily', null, '1301');
INSERT INTO `act_hi_identitylink` VALUES ('1406', null, 'candidate', 'Rose', '1405', null);
INSERT INTO `act_hi_identitylink` VALUES ('1407', null, 'participant', 'Rose', null, '1401');
INSERT INTO `act_hi_identitylink` VALUES ('1408', null, 'candidate', 'Lily', '1405', null);
INSERT INTO `act_hi_identitylink` VALUES ('1409', null, 'participant', 'Lily', null, '1401');
INSERT INTO `act_hi_identitylink` VALUES ('1415', null, 'candidate', 'Rose', '1414', null);
INSERT INTO `act_hi_identitylink` VALUES ('1416', null, 'participant', 'Rose', null, '1410');
INSERT INTO `act_hi_identitylink` VALUES ('1417', null, 'candidate', 'Lily', '1414', null);
INSERT INTO `act_hi_identitylink` VALUES ('1418', null, 'participant', 'Lily', null, '1410');
INSERT INTO `act_hi_identitylink` VALUES ('1424', null, 'candidate', 'Rose', '1423', null);
INSERT INTO `act_hi_identitylink` VALUES ('1425', null, 'participant', 'Rose', null, '1419');
INSERT INTO `act_hi_identitylink` VALUES ('1426', null, 'candidate', 'Lily', '1423', null);
INSERT INTO `act_hi_identitylink` VALUES ('1427', null, 'participant', 'Lily', null, '1419');
INSERT INTO `act_hi_identitylink` VALUES ('1506', null, 'candidate', 'Rose', '1505', null);
INSERT INTO `act_hi_identitylink` VALUES ('1507', null, 'participant', 'Rose', null, '1501');
INSERT INTO `act_hi_identitylink` VALUES ('1508', null, 'candidate', 'Lily', '1505', null);
INSERT INTO `act_hi_identitylink` VALUES ('1509', null, 'participant', 'Lily', null, '1501');
INSERT INTO `act_hi_identitylink` VALUES ('1606', null, 'candidate', 'Rose', '1605', null);
INSERT INTO `act_hi_identitylink` VALUES ('1607', null, 'participant', 'Rose', null, '1601');
INSERT INTO `act_hi_identitylink` VALUES ('1608', null, 'candidate', 'Lily', '1605', null);
INSERT INTO `act_hi_identitylink` VALUES ('1609', null, 'participant', 'Lily', null, '1601');
INSERT INTO `act_hi_identitylink` VALUES ('1615', null, 'candidate', 'Rose', '1614', null);
INSERT INTO `act_hi_identitylink` VALUES ('1616', null, 'participant', 'Rose', null, '1610');
INSERT INTO `act_hi_identitylink` VALUES ('1617', null, 'candidate', 'Lily', '1614', null);
INSERT INTO `act_hi_identitylink` VALUES ('1618', null, 'participant', 'Lily', null, '1610');
INSERT INTO `act_hi_identitylink` VALUES ('1624', null, 'candidate', 'Rose', '1623', null);
INSERT INTO `act_hi_identitylink` VALUES ('1625', null, 'participant', 'Rose', null, '1619');
INSERT INTO `act_hi_identitylink` VALUES ('1626', null, 'candidate', 'Lily', '1623', null);
INSERT INTO `act_hi_identitylink` VALUES ('1627', null, 'participant', 'Lily', null, '1619');
INSERT INTO `act_hi_identitylink` VALUES ('1706', null, 'candidate', 'Rose', '1705', null);
INSERT INTO `act_hi_identitylink` VALUES ('1707', null, 'participant', 'Rose', null, '1701');
INSERT INTO `act_hi_identitylink` VALUES ('1708', null, 'candidate', 'Lily', '1705', null);
INSERT INTO `act_hi_identitylink` VALUES ('1709', null, 'participant', 'Lily', null, '1701');
INSERT INTO `act_hi_identitylink` VALUES ('1715', null, 'candidate', 'Rose', '1714', null);
INSERT INTO `act_hi_identitylink` VALUES ('1716', null, 'participant', 'Rose', null, '1710');
INSERT INTO `act_hi_identitylink` VALUES ('1717', null, 'candidate', 'Lily', '1714', null);
INSERT INTO `act_hi_identitylink` VALUES ('1718', null, 'participant', 'Lily', null, '1710');
INSERT INTO `act_hi_identitylink` VALUES ('1724', null, 'candidate', 'Rose', '1723', null);
INSERT INTO `act_hi_identitylink` VALUES ('1725', null, 'participant', 'Rose', null, '1719');
INSERT INTO `act_hi_identitylink` VALUES ('1726', null, 'candidate', 'Lily', '1723', null);
INSERT INTO `act_hi_identitylink` VALUES ('1727', null, 'participant', 'Lily', null, '1719');
INSERT INTO `act_hi_identitylink` VALUES ('206', null, 'candidate', 'Rose', '205', null);
INSERT INTO `act_hi_identitylink` VALUES ('207', null, 'participant', 'Rose', null, '201');
INSERT INTO `act_hi_identitylink` VALUES ('208', null, 'candidate', 'Lily', '205', null);
INSERT INTO `act_hi_identitylink` VALUES ('209', null, 'participant', 'Lily', null, '201');
INSERT INTO `act_hi_identitylink` VALUES ('306', null, 'candidate', 'Rose', '305', null);
INSERT INTO `act_hi_identitylink` VALUES ('307', null, 'participant', 'Rose', null, '301');
INSERT INTO `act_hi_identitylink` VALUES ('308', null, 'candidate', 'Lily', '305', null);
INSERT INTO `act_hi_identitylink` VALUES ('309', null, 'participant', 'Lily', null, '301');
INSERT INTO `act_hi_identitylink` VALUES ('406', null, 'candidate', 'Rose', '405', null);
INSERT INTO `act_hi_identitylink` VALUES ('407', null, 'participant', 'Rose', null, '401');
INSERT INTO `act_hi_identitylink` VALUES ('408', null, 'candidate', 'Lily', '405', null);
INSERT INTO `act_hi_identitylink` VALUES ('409', null, 'participant', 'Lily', null, '401');
INSERT INTO `act_hi_identitylink` VALUES ('506', null, 'candidate', 'Rose', '505', null);
INSERT INTO `act_hi_identitylink` VALUES ('507', null, 'participant', 'Rose', null, '501');
INSERT INTO `act_hi_identitylink` VALUES ('508', null, 'candidate', 'Lily', '505', null);
INSERT INTO `act_hi_identitylink` VALUES ('509', null, 'participant', 'Lily', null, '501');
INSERT INTO `act_hi_identitylink` VALUES ('606', null, 'candidate', 'Rose', '605', null);
INSERT INTO `act_hi_identitylink` VALUES ('607', null, 'participant', 'Rose', null, '601');
INSERT INTO `act_hi_identitylink` VALUES ('608', null, 'candidate', 'Lily', '605', null);
INSERT INTO `act_hi_identitylink` VALUES ('609', null, 'participant', 'Lily', null, '601');
INSERT INTO `act_hi_identitylink` VALUES ('706', null, 'candidate', 'Rose', '705', null);
INSERT INTO `act_hi_identitylink` VALUES ('707', null, 'participant', 'Rose', null, '701');
INSERT INTO `act_hi_identitylink` VALUES ('708', null, 'candidate', 'Lily', '705', null);
INSERT INTO `act_hi_identitylink` VALUES ('709', null, 'participant', 'Lily', null, '701');
INSERT INTO `act_hi_identitylink` VALUES ('806', null, 'candidate', 'Rose', '805', null);
INSERT INTO `act_hi_identitylink` VALUES ('807', null, 'participant', 'Rose', null, '801');
INSERT INTO `act_hi_identitylink` VALUES ('808', null, 'candidate', 'Lily', '805', null);
INSERT INTO `act_hi_identitylink` VALUES ('809', null, 'participant', 'Lily', null, '801');
INSERT INTO `act_hi_identitylink` VALUES ('906', null, 'candidate', 'Rose', '905', null);
INSERT INTO `act_hi_identitylink` VALUES ('907', null, 'participant', 'Rose', null, '901');
INSERT INTO `act_hi_identitylink` VALUES ('908', null, 'candidate', 'Lily', '905', null);
INSERT INTO `act_hi_identitylink` VALUES ('909', null, 'participant', 'Lily', null, '901');

-- ----------------------------
-- Table structure for `act_hi_procinst`
-- ----------------------------
DROP TABLE IF EXISTS `act_hi_procinst`;
CREATE TABLE `act_hi_procinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `BUSINESS_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `START_TIME_` datetime NOT NULL,
  `END_TIME_` datetime DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  `START_USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `END_ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUPER_PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DELETE_REASON_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `PROC_INST_ID_` (`PROC_INST_ID_`),
  UNIQUE KEY `ACT_UNIQ_HI_BUS_KEY` (`PROC_DEF_ID_`,`BUSINESS_KEY_`),
  KEY `ACT_IDX_HI_PRO_INST_END` (`END_TIME_`),
  KEY `ACT_IDX_HI_PRO_I_BUSKEY` (`BUSINESS_KEY_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of act_hi_procinst
-- ----------------------------
INSERT INTO `act_hi_procinst` VALUES ('1001', '1001', null, 'suggestId:1:4', '2017-08-11 15:20:41', null, null, null, 'start', null, null, null);
INSERT INTO `act_hi_procinst` VALUES ('101', '101', null, 'suggestId:1:4', '2017-08-11 11:42:10', null, null, null, 'start', null, null, null);
INSERT INTO `act_hi_procinst` VALUES ('1101', '1101', null, 'suggestId:1:4', '2017-08-11 15:24:49', null, null, null, 'start', null, null, null);
INSERT INTO `act_hi_procinst` VALUES ('1201', '1201', null, 'suggestId:1:4', '2017-08-11 15:30:18', null, null, null, 'start', null, null, null);
INSERT INTO `act_hi_procinst` VALUES ('1301', '1301', null, 'suggestId:1:4', '2017-08-11 15:33:53', null, null, null, 'start', null, null, null);
INSERT INTO `act_hi_procinst` VALUES ('1401', '1401', null, 'suggestId:1:4', '2017-08-11 15:36:25', null, null, null, 'start', null, null, null);
INSERT INTO `act_hi_procinst` VALUES ('1410', '1410', null, 'suggestId:1:4', '2017-08-11 15:38:47', null, null, null, 'start', null, null, null);
INSERT INTO `act_hi_procinst` VALUES ('1419', '1419', null, 'suggestId:1:4', '2017-08-11 15:43:05', null, null, null, 'start', null, null, null);
INSERT INTO `act_hi_procinst` VALUES ('1501', '1501', null, 'suggestId:1:4', '2017-08-11 16:19:48', null, null, null, 'start', null, null, null);
INSERT INTO `act_hi_procinst` VALUES ('1601', '1601', null, 'suggestId:1:4', '2017-08-11 16:24:14', null, null, null, 'start', null, null, null);
INSERT INTO `act_hi_procinst` VALUES ('1610', '1610', null, 'suggestId:1:4', '2017-08-11 16:26:20', null, null, null, 'start', null, null, null);
INSERT INTO `act_hi_procinst` VALUES ('1619', '1619', null, 'suggestId:1:4', '2017-08-11 16:27:48', null, null, null, 'start', null, null, null);
INSERT INTO `act_hi_procinst` VALUES ('1701', '1701', null, 'suggestId:1:4', '2017-08-11 17:46:47', null, null, null, 'start', null, null, null);
INSERT INTO `act_hi_procinst` VALUES ('1710', '1710', null, 'suggestId:1:4', '2017-08-11 17:48:39', null, null, null, 'start', null, null, null);
INSERT INTO `act_hi_procinst` VALUES ('1719', '1719', null, 'suggestId:1:4', '2017-08-11 17:51:09', null, null, null, 'start', null, null, null);
INSERT INTO `act_hi_procinst` VALUES ('201', '201', null, 'suggestId:1:4', '2017-08-11 11:44:11', null, null, null, 'start', null, null, null);
INSERT INTO `act_hi_procinst` VALUES ('301', '301', null, 'suggestId:1:4', '2017-08-11 11:45:37', null, null, null, 'start', null, null, null);
INSERT INTO `act_hi_procinst` VALUES ('401', '401', null, 'suggestId:1:4', '2017-08-11 13:38:25', null, null, null, 'start', null, null, null);
INSERT INTO `act_hi_procinst` VALUES ('501', '501', null, 'suggestId:1:4', '2017-08-11 13:41:18', null, null, null, 'start', null, null, null);
INSERT INTO `act_hi_procinst` VALUES ('601', '601', null, 'suggestId:1:4', '2017-08-11 13:47:37', null, null, null, 'start', null, null, null);
INSERT INTO `act_hi_procinst` VALUES ('701', '701', null, 'suggestId:1:4', '2017-08-11 13:51:49', null, null, null, 'start', null, null, null);
INSERT INTO `act_hi_procinst` VALUES ('801', '801', null, 'suggestId:1:4', '2017-08-11 15:12:37', null, null, null, 'start', null, null, null);
INSERT INTO `act_hi_procinst` VALUES ('901', '901', null, 'suggestId:1:4', '2017-08-11 15:15:59', null, null, null, 'start', null, null, null);

-- ----------------------------
-- Table structure for `act_hi_taskinst`
-- ----------------------------
DROP TABLE IF EXISTS `act_hi_taskinst`;
CREATE TABLE `act_hi_taskinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_DEF_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_TIME_` datetime NOT NULL,
  `CLAIM_TIME_` datetime DEFAULT NULL,
  `END_TIME_` datetime DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  `DELETE_REASON_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `PRIORITY_` int(11) DEFAULT NULL,
  `DUE_DATE_` datetime DEFAULT NULL,
  `FORM_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of act_hi_taskinst
-- ----------------------------
INSERT INTO `act_hi_taskinst` VALUES ('1005', 'suggestId:1:4', 'task1', '1001', '1001', '反馈审核', null, null, null, null, '2017-08-11 15:20:41', null, null, null, null, '50', null, null);
INSERT INTO `act_hi_taskinst` VALUES ('105', 'suggestId:1:4', 'task1', '101', '101', '反馈审核', null, null, null, null, '2017-08-11 11:42:10', null, null, null, null, '50', null, null);
INSERT INTO `act_hi_taskinst` VALUES ('1105', 'suggestId:1:4', 'task1', '1101', '1101', '反馈审核', null, null, null, null, '2017-08-11 15:24:49', null, null, null, null, '50', null, null);
INSERT INTO `act_hi_taskinst` VALUES ('1205', 'suggestId:1:4', 'task1', '1201', '1201', '反馈审核', null, null, null, null, '2017-08-11 15:30:18', null, null, null, null, '50', null, null);
INSERT INTO `act_hi_taskinst` VALUES ('1305', 'suggestId:1:4', 'task1', '1301', '1301', '反馈审核', null, null, null, null, '2017-08-11 15:33:53', null, null, null, null, '50', null, null);
INSERT INTO `act_hi_taskinst` VALUES ('1405', 'suggestId:1:4', 'task1', '1401', '1401', '反馈审核', null, null, null, null, '2017-08-11 15:36:25', null, null, null, null, '50', null, null);
INSERT INTO `act_hi_taskinst` VALUES ('1414', 'suggestId:1:4', 'task1', '1410', '1410', '反馈审核', null, null, null, null, '2017-08-11 15:38:47', null, null, null, null, '50', null, null);
INSERT INTO `act_hi_taskinst` VALUES ('1423', 'suggestId:1:4', 'task1', '1419', '1419', '反馈审核', null, null, null, null, '2017-08-11 15:43:05', null, null, null, null, '50', null, null);
INSERT INTO `act_hi_taskinst` VALUES ('1505', 'suggestId:1:4', 'task1', '1501', '1501', '反馈审核', null, null, null, null, '2017-08-11 16:19:48', null, null, null, null, '50', null, null);
INSERT INTO `act_hi_taskinst` VALUES ('1605', 'suggestId:1:4', 'task1', '1601', '1601', '反馈审核', null, null, null, null, '2017-08-11 16:24:14', null, null, null, null, '50', null, null);
INSERT INTO `act_hi_taskinst` VALUES ('1614', 'suggestId:1:4', 'task1', '1610', '1610', '反馈审核', null, null, null, null, '2017-08-11 16:26:20', null, null, null, null, '50', null, null);
INSERT INTO `act_hi_taskinst` VALUES ('1623', 'suggestId:1:4', 'task1', '1619', '1619', '反馈审核', null, null, null, null, '2017-08-11 16:27:48', null, null, null, null, '50', null, null);
INSERT INTO `act_hi_taskinst` VALUES ('1705', 'suggestId:1:4', 'task1', '1701', '1701', '反馈审核', null, null, null, null, '2017-08-11 17:46:47', null, null, null, null, '50', null, null);
INSERT INTO `act_hi_taskinst` VALUES ('1714', 'suggestId:1:4', 'task1', '1710', '1710', '反馈审核', null, null, null, null, '2017-08-11 17:48:39', null, null, null, null, '50', null, null);
INSERT INTO `act_hi_taskinst` VALUES ('1723', 'suggestId:1:4', 'task1', '1719', '1719', '反馈审核', null, null, null, null, '2017-08-11 17:51:09', null, null, null, null, '50', null, null);
INSERT INTO `act_hi_taskinst` VALUES ('205', 'suggestId:1:4', 'task1', '201', '201', '反馈审核', null, null, null, null, '2017-08-11 11:44:11', null, null, null, null, '50', null, null);
INSERT INTO `act_hi_taskinst` VALUES ('305', 'suggestId:1:4', 'task1', '301', '301', '反馈审核', null, null, null, null, '2017-08-11 11:45:37', null, null, null, null, '50', null, null);
INSERT INTO `act_hi_taskinst` VALUES ('405', 'suggestId:1:4', 'task1', '401', '401', '反馈审核', null, null, null, null, '2017-08-11 13:38:25', null, null, null, null, '50', null, null);
INSERT INTO `act_hi_taskinst` VALUES ('505', 'suggestId:1:4', 'task1', '501', '501', '反馈审核', null, null, null, null, '2017-08-11 13:41:18', null, null, null, null, '50', null, null);
INSERT INTO `act_hi_taskinst` VALUES ('605', 'suggestId:1:4', 'task1', '601', '601', '反馈审核', null, null, null, null, '2017-08-11 13:47:37', null, null, null, null, '50', null, null);
INSERT INTO `act_hi_taskinst` VALUES ('705', 'suggestId:1:4', 'task1', '701', '701', '反馈审核', null, null, null, null, '2017-08-11 13:51:49', null, null, null, null, '50', null, null);
INSERT INTO `act_hi_taskinst` VALUES ('805', 'suggestId:1:4', 'task1', '801', '801', '反馈审核', null, null, null, null, '2017-08-11 15:12:37', null, null, null, null, '50', null, null);
INSERT INTO `act_hi_taskinst` VALUES ('905', 'suggestId:1:4', 'task1', '901', '901', '反馈审核', null, null, null, null, '2017-08-11 15:15:59', null, null, null, null, '50', null, null);

-- ----------------------------
-- Table structure for `act_hi_varinst`
-- ----------------------------
DROP TABLE IF EXISTS `act_hi_varinst`;
CREATE TABLE `act_hi_varinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin NOT NULL,
  `VAR_TYPE_` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `REV_` int(11) DEFAULT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint(20) DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_PROCVAR_PROC_INST` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_PROCVAR_NAME_TYPE` (`NAME_`,`VAR_TYPE_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of act_hi_varinst
-- ----------------------------
INSERT INTO `act_hi_varinst` VALUES ('1003', '1001', '1001', null, 'userId', 'string', '0', null, null, null, 'Rose,Lily', null);
INSERT INTO `act_hi_varinst` VALUES ('103', '101', '101', null, 'userId', 'string', '0', null, null, null, 'Rose,Lily', null);
INSERT INTO `act_hi_varinst` VALUES ('1103', '1101', '1101', null, 'userId', 'string', '0', null, null, null, 'Rose,Lily', null);
INSERT INTO `act_hi_varinst` VALUES ('1203', '1201', '1201', null, 'userId', 'string', '0', null, null, null, 'Rose,Lily', null);
INSERT INTO `act_hi_varinst` VALUES ('1303', '1301', '1301', null, 'userId', 'string', '0', null, null, null, 'Rose,Lily', null);
INSERT INTO `act_hi_varinst` VALUES ('1403', '1401', '1401', null, 'userId', 'string', '0', null, null, null, 'Rose,Lily', null);
INSERT INTO `act_hi_varinst` VALUES ('1412', '1410', '1410', null, 'userId', 'string', '0', null, null, null, 'Rose,Lily', null);
INSERT INTO `act_hi_varinst` VALUES ('1421', '1419', '1419', null, 'userId', 'string', '0', null, null, null, 'Rose,Lily', null);
INSERT INTO `act_hi_varinst` VALUES ('1503', '1501', '1501', null, 'userId', 'string', '0', null, null, null, 'Rose,Lily', null);
INSERT INTO `act_hi_varinst` VALUES ('1603', '1601', '1601', null, 'userId', 'string', '0', null, null, null, 'Rose,Lily', null);
INSERT INTO `act_hi_varinst` VALUES ('1612', '1610', '1610', null, 'userId', 'string', '0', null, null, null, 'Rose,Lily', null);
INSERT INTO `act_hi_varinst` VALUES ('1621', '1619', '1619', null, 'userId', 'string', '0', null, null, null, 'Rose,Lily', null);
INSERT INTO `act_hi_varinst` VALUES ('1703', '1701', '1701', null, 'userId', 'string', '0', null, null, null, 'Rose,Lily', null);
INSERT INTO `act_hi_varinst` VALUES ('1712', '1710', '1710', null, 'userId', 'string', '0', null, null, null, 'Rose,Lily', null);
INSERT INTO `act_hi_varinst` VALUES ('1721', '1719', '1719', null, 'userId', 'string', '0', null, null, null, 'Rose,Lily', null);
INSERT INTO `act_hi_varinst` VALUES ('203', '201', '201', null, 'userId', 'string', '0', null, null, null, 'Rose,Lily', null);
INSERT INTO `act_hi_varinst` VALUES ('303', '301', '301', null, 'userId', 'string', '0', null, null, null, 'Rose,Lily', null);
INSERT INTO `act_hi_varinst` VALUES ('403', '401', '401', null, 'userId', 'string', '0', null, null, null, 'Rose,Lily', null);
INSERT INTO `act_hi_varinst` VALUES ('503', '501', '501', null, 'userId', 'string', '0', null, null, null, 'Rose,Lily', null);
INSERT INTO `act_hi_varinst` VALUES ('603', '601', '601', null, 'userId', 'string', '0', null, null, null, 'Rose,Lily', null);
INSERT INTO `act_hi_varinst` VALUES ('703', '701', '701', null, 'userId', 'string', '0', null, null, null, 'Rose,Lily', null);
INSERT INTO `act_hi_varinst` VALUES ('803', '801', '801', null, 'userId', 'string', '0', null, null, null, 'Rose,Lily', null);
INSERT INTO `act_hi_varinst` VALUES ('903', '901', '901', null, 'userId', 'string', '0', null, null, null, 'Rose,Lily', null);

-- ----------------------------
-- Table structure for `act_id_group`
-- ----------------------------
DROP TABLE IF EXISTS `act_id_group`;
CREATE TABLE `act_id_group` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of act_id_group
-- ----------------------------

-- ----------------------------
-- Table structure for `act_id_info`
-- ----------------------------
DROP TABLE IF EXISTS `act_id_info`;
CREATE TABLE `act_id_info` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `USER_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `VALUE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PASSWORD_` longblob,
  `PARENT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of act_id_info
-- ----------------------------

-- ----------------------------
-- Table structure for `act_id_membership`
-- ----------------------------
DROP TABLE IF EXISTS `act_id_membership`;
CREATE TABLE `act_id_membership` (
  `USER_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `GROUP_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`USER_ID_`,`GROUP_ID_`),
  KEY `ACT_FK_MEMB_GROUP` (`GROUP_ID_`),
  CONSTRAINT `ACT_FK_MEMB_GROUP` FOREIGN KEY (`GROUP_ID_`) REFERENCES `act_id_group` (`ID_`),
  CONSTRAINT `ACT_FK_MEMB_USER` FOREIGN KEY (`USER_ID_`) REFERENCES `act_id_user` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of act_id_membership
-- ----------------------------

-- ----------------------------
-- Table structure for `act_id_user`
-- ----------------------------
DROP TABLE IF EXISTS `act_id_user`;
CREATE TABLE `act_id_user` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `FIRST_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `LAST_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EMAIL_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PWD_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PICTURE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of act_id_user
-- ----------------------------

-- ----------------------------
-- Table structure for `act_re_deployment`
-- ----------------------------
DROP TABLE IF EXISTS `act_re_deployment`;
CREATE TABLE `act_re_deployment` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DEPLOY_TIME_` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of act_re_deployment
-- ----------------------------
INSERT INTO `act_re_deployment` VALUES ('1', '部署suggest流程', null, '2017-08-11 11:41:53');

-- ----------------------------
-- Table structure for `act_re_model`
-- ----------------------------
DROP TABLE IF EXISTS `act_re_model`;
CREATE TABLE `act_re_model` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` timestamp NULL DEFAULT NULL,
  `LAST_UPDATE_TIME_` timestamp NULL DEFAULT NULL,
  `VERSION_` int(11) DEFAULT NULL,
  `META_INFO_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EDITOR_SOURCE_VALUE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EDITOR_SOURCE_EXTRA_VALUE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_MODEL_SOURCE` (`EDITOR_SOURCE_VALUE_ID_`),
  KEY `ACT_FK_MODEL_SOURCE_EXTRA` (`EDITOR_SOURCE_EXTRA_VALUE_ID_`),
  KEY `ACT_FK_MODEL_DEPLOYMENT` (`DEPLOYMENT_ID_`),
  CONSTRAINT `ACT_FK_MODEL_DEPLOYMENT` FOREIGN KEY (`DEPLOYMENT_ID_`) REFERENCES `act_re_deployment` (`ID_`),
  CONSTRAINT `ACT_FK_MODEL_SOURCE` FOREIGN KEY (`EDITOR_SOURCE_VALUE_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_MODEL_SOURCE_EXTRA` FOREIGN KEY (`EDITOR_SOURCE_EXTRA_VALUE_ID_`) REFERENCES `act_ge_bytearray` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of act_re_model
-- ----------------------------

-- ----------------------------
-- Table structure for `act_re_procdef`
-- ----------------------------
DROP TABLE IF EXISTS `act_re_procdef`;
CREATE TABLE `act_re_procdef` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin NOT NULL,
  `VERSION_` int(11) NOT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `RESOURCE_NAME_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DGRM_RESOURCE_NAME_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `HAS_START_FORM_KEY_` tinyint(4) DEFAULT NULL,
  `SUSPENSION_STATE_` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `ACT_UNIQ_PROCDEF` (`KEY_`,`VERSION_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of act_re_procdef
-- ----------------------------
INSERT INTO `act_re_procdef` VALUES ('suggestId:1:4', '1', 'demo', 'suggestProcess', 'suggestId', '1', '1', 'activiti/suggestId.bpmn20.xml', 'activiti/suggestId.suggestId.png', null, '0', '1');

-- ----------------------------
-- Table structure for `act_ru_event_subscr`
-- ----------------------------
DROP TABLE IF EXISTS `act_ru_event_subscr`;
CREATE TABLE `act_ru_event_subscr` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `EVENT_TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `EVENT_NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACTIVITY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CONFIGURATION_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_EVENT_SUBSCR_CONFIG_` (`CONFIGURATION_`),
  KEY `ACT_FK_EVENT_EXEC` (`EXECUTION_ID_`),
  CONSTRAINT `ACT_FK_EVENT_EXEC` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of act_ru_event_subscr
-- ----------------------------

-- ----------------------------
-- Table structure for `act_ru_execution`
-- ----------------------------
DROP TABLE IF EXISTS `act_ru_execution`;
CREATE TABLE `act_ru_execution` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `BUSINESS_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `SUPER_EXEC_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `IS_ACTIVE_` tinyint(4) DEFAULT NULL,
  `IS_CONCURRENT_` tinyint(4) DEFAULT NULL,
  `IS_SCOPE_` tinyint(4) DEFAULT NULL,
  `IS_EVENT_SCOPE_` tinyint(4) DEFAULT NULL,
  `SUSPENSION_STATE_` int(11) DEFAULT NULL,
  `CACHED_ENT_STATE_` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `ACT_UNIQ_RU_BUS_KEY` (`PROC_DEF_ID_`,`BUSINESS_KEY_`),
  KEY `ACT_IDX_EXEC_BUSKEY` (`BUSINESS_KEY_`),
  KEY `ACT_FK_EXE_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_FK_EXE_PARENT` (`PARENT_ID_`),
  KEY `ACT_FK_EXE_SUPER` (`SUPER_EXEC_`),
  CONSTRAINT `ACT_FK_EXE_PARENT` FOREIGN KEY (`PARENT_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_EXE_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_EXE_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ACT_FK_EXE_SUPER` FOREIGN KEY (`SUPER_EXEC_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of act_ru_execution
-- ----------------------------
INSERT INTO `act_ru_execution` VALUES ('1001', '1', '1001', null, null, 'suggestId:1:4', null, 'task1', '1', '0', '1', '0', '1', '2');
INSERT INTO `act_ru_execution` VALUES ('101', '1', '101', null, null, 'suggestId:1:4', null, 'task1', '1', '0', '1', '0', '1', '2');
INSERT INTO `act_ru_execution` VALUES ('1101', '1', '1101', null, null, 'suggestId:1:4', null, 'task1', '1', '0', '1', '0', '1', '2');
INSERT INTO `act_ru_execution` VALUES ('1201', '1', '1201', null, null, 'suggestId:1:4', null, 'task1', '1', '0', '1', '0', '1', '2');
INSERT INTO `act_ru_execution` VALUES ('1301', '1', '1301', null, null, 'suggestId:1:4', null, 'task1', '1', '0', '1', '0', '1', '2');
INSERT INTO `act_ru_execution` VALUES ('1401', '1', '1401', null, null, 'suggestId:1:4', null, 'task1', '1', '0', '1', '0', '1', '2');
INSERT INTO `act_ru_execution` VALUES ('1410', '1', '1410', null, null, 'suggestId:1:4', null, 'task1', '1', '0', '1', '0', '1', '2');
INSERT INTO `act_ru_execution` VALUES ('1419', '1', '1419', null, null, 'suggestId:1:4', null, 'task1', '1', '0', '1', '0', '1', '2');
INSERT INTO `act_ru_execution` VALUES ('1501', '1', '1501', null, null, 'suggestId:1:4', null, 'task1', '1', '0', '1', '0', '1', '2');
INSERT INTO `act_ru_execution` VALUES ('1601', '1', '1601', null, null, 'suggestId:1:4', null, 'task1', '1', '0', '1', '0', '1', '2');
INSERT INTO `act_ru_execution` VALUES ('1610', '1', '1610', null, null, 'suggestId:1:4', null, 'task1', '1', '0', '1', '0', '1', '2');
INSERT INTO `act_ru_execution` VALUES ('1619', '1', '1619', null, null, 'suggestId:1:4', null, 'task1', '1', '0', '1', '0', '1', '2');
INSERT INTO `act_ru_execution` VALUES ('1701', '1', '1701', null, null, 'suggestId:1:4', null, 'task1', '1', '0', '1', '0', '1', '2');
INSERT INTO `act_ru_execution` VALUES ('1710', '1', '1710', null, null, 'suggestId:1:4', null, 'task1', '1', '0', '1', '0', '1', '2');
INSERT INTO `act_ru_execution` VALUES ('1719', '1', '1719', null, null, 'suggestId:1:4', null, 'task1', '1', '0', '1', '0', '1', '2');
INSERT INTO `act_ru_execution` VALUES ('201', '1', '201', null, null, 'suggestId:1:4', null, 'task1', '1', '0', '1', '0', '1', '2');
INSERT INTO `act_ru_execution` VALUES ('301', '1', '301', null, null, 'suggestId:1:4', null, 'task1', '1', '0', '1', '0', '1', '2');
INSERT INTO `act_ru_execution` VALUES ('401', '1', '401', null, null, 'suggestId:1:4', null, 'task1', '1', '0', '1', '0', '1', '2');
INSERT INTO `act_ru_execution` VALUES ('501', '1', '501', null, null, 'suggestId:1:4', null, 'task1', '1', '0', '1', '0', '1', '2');
INSERT INTO `act_ru_execution` VALUES ('601', '1', '601', null, null, 'suggestId:1:4', null, 'task1', '1', '0', '1', '0', '1', '2');
INSERT INTO `act_ru_execution` VALUES ('701', '1', '701', null, null, 'suggestId:1:4', null, 'task1', '1', '0', '1', '0', '1', '2');
INSERT INTO `act_ru_execution` VALUES ('801', '1', '801', null, null, 'suggestId:1:4', null, 'task1', '1', '0', '1', '0', '1', '2');
INSERT INTO `act_ru_execution` VALUES ('901', '1', '901', null, null, 'suggestId:1:4', null, 'task1', '1', '0', '1', '0', '1', '2');

-- ----------------------------
-- Table structure for `act_ru_identitylink`
-- ----------------------------
DROP TABLE IF EXISTS `act_ru_identitylink`;
CREATE TABLE `act_ru_identitylink` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `GROUP_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_IDENT_LNK_USER` (`USER_ID_`),
  KEY `ACT_IDX_IDENT_LNK_GROUP` (`GROUP_ID_`),
  KEY `ACT_IDX_ATHRZ_PROCEDEF` (`PROC_DEF_ID_`),
  KEY `ACT_FK_TSKASS_TASK` (`TASK_ID_`),
  KEY `ACT_FK_IDL_PROCINST` (`PROC_INST_ID_`),
  CONSTRAINT `ACT_FK_ATHRZ_PROCEDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_IDL_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_TSKASS_TASK` FOREIGN KEY (`TASK_ID_`) REFERENCES `act_ru_task` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of act_ru_identitylink
-- ----------------------------
INSERT INTO `act_ru_identitylink` VALUES ('1006', '1', null, 'candidate', 'Rose', '1005', null, null);
INSERT INTO `act_ru_identitylink` VALUES ('1007', '1', null, 'participant', 'Rose', null, '1001', null);
INSERT INTO `act_ru_identitylink` VALUES ('1008', '1', null, 'candidate', 'Lily', '1005', null, null);
INSERT INTO `act_ru_identitylink` VALUES ('1009', '1', null, 'participant', 'Lily', null, '1001', null);
INSERT INTO `act_ru_identitylink` VALUES ('106', '1', null, 'candidate', 'Rose', '105', null, null);
INSERT INTO `act_ru_identitylink` VALUES ('107', '1', null, 'participant', 'Rose', null, '101', null);
INSERT INTO `act_ru_identitylink` VALUES ('108', '1', null, 'candidate', 'Lily', '105', null, null);
INSERT INTO `act_ru_identitylink` VALUES ('109', '1', null, 'participant', 'Lily', null, '101', null);
INSERT INTO `act_ru_identitylink` VALUES ('1106', '1', null, 'candidate', 'Rose', '1105', null, null);
INSERT INTO `act_ru_identitylink` VALUES ('1107', '1', null, 'participant', 'Rose', null, '1101', null);
INSERT INTO `act_ru_identitylink` VALUES ('1108', '1', null, 'candidate', 'Lily', '1105', null, null);
INSERT INTO `act_ru_identitylink` VALUES ('1109', '1', null, 'participant', 'Lily', null, '1101', null);
INSERT INTO `act_ru_identitylink` VALUES ('1206', '1', null, 'candidate', 'Rose', '1205', null, null);
INSERT INTO `act_ru_identitylink` VALUES ('1207', '1', null, 'participant', 'Rose', null, '1201', null);
INSERT INTO `act_ru_identitylink` VALUES ('1208', '1', null, 'candidate', 'Lily', '1205', null, null);
INSERT INTO `act_ru_identitylink` VALUES ('1209', '1', null, 'participant', 'Lily', null, '1201', null);
INSERT INTO `act_ru_identitylink` VALUES ('1306', '1', null, 'candidate', 'Rose', '1305', null, null);
INSERT INTO `act_ru_identitylink` VALUES ('1307', '1', null, 'participant', 'Rose', null, '1301', null);
INSERT INTO `act_ru_identitylink` VALUES ('1308', '1', null, 'candidate', 'Lily', '1305', null, null);
INSERT INTO `act_ru_identitylink` VALUES ('1309', '1', null, 'participant', 'Lily', null, '1301', null);
INSERT INTO `act_ru_identitylink` VALUES ('1406', '1', null, 'candidate', 'Rose', '1405', null, null);
INSERT INTO `act_ru_identitylink` VALUES ('1407', '1', null, 'participant', 'Rose', null, '1401', null);
INSERT INTO `act_ru_identitylink` VALUES ('1408', '1', null, 'candidate', 'Lily', '1405', null, null);
INSERT INTO `act_ru_identitylink` VALUES ('1409', '1', null, 'participant', 'Lily', null, '1401', null);
INSERT INTO `act_ru_identitylink` VALUES ('1415', '1', null, 'candidate', 'Rose', '1414', null, null);
INSERT INTO `act_ru_identitylink` VALUES ('1416', '1', null, 'participant', 'Rose', null, '1410', null);
INSERT INTO `act_ru_identitylink` VALUES ('1417', '1', null, 'candidate', 'Lily', '1414', null, null);
INSERT INTO `act_ru_identitylink` VALUES ('1418', '1', null, 'participant', 'Lily', null, '1410', null);
INSERT INTO `act_ru_identitylink` VALUES ('1424', '1', null, 'candidate', 'Rose', '1423', null, null);
INSERT INTO `act_ru_identitylink` VALUES ('1425', '1', null, 'participant', 'Rose', null, '1419', null);
INSERT INTO `act_ru_identitylink` VALUES ('1426', '1', null, 'candidate', 'Lily', '1423', null, null);
INSERT INTO `act_ru_identitylink` VALUES ('1427', '1', null, 'participant', 'Lily', null, '1419', null);
INSERT INTO `act_ru_identitylink` VALUES ('1506', '1', null, 'candidate', 'Rose', '1505', null, null);
INSERT INTO `act_ru_identitylink` VALUES ('1507', '1', null, 'participant', 'Rose', null, '1501', null);
INSERT INTO `act_ru_identitylink` VALUES ('1508', '1', null, 'candidate', 'Lily', '1505', null, null);
INSERT INTO `act_ru_identitylink` VALUES ('1509', '1', null, 'participant', 'Lily', null, '1501', null);
INSERT INTO `act_ru_identitylink` VALUES ('1606', '1', null, 'candidate', 'Rose', '1605', null, null);
INSERT INTO `act_ru_identitylink` VALUES ('1607', '1', null, 'participant', 'Rose', null, '1601', null);
INSERT INTO `act_ru_identitylink` VALUES ('1608', '1', null, 'candidate', 'Lily', '1605', null, null);
INSERT INTO `act_ru_identitylink` VALUES ('1609', '1', null, 'participant', 'Lily', null, '1601', null);
INSERT INTO `act_ru_identitylink` VALUES ('1615', '1', null, 'candidate', 'Rose', '1614', null, null);
INSERT INTO `act_ru_identitylink` VALUES ('1616', '1', null, 'participant', 'Rose', null, '1610', null);
INSERT INTO `act_ru_identitylink` VALUES ('1617', '1', null, 'candidate', 'Lily', '1614', null, null);
INSERT INTO `act_ru_identitylink` VALUES ('1618', '1', null, 'participant', 'Lily', null, '1610', null);
INSERT INTO `act_ru_identitylink` VALUES ('1624', '1', null, 'candidate', 'Rose', '1623', null, null);
INSERT INTO `act_ru_identitylink` VALUES ('1625', '1', null, 'participant', 'Rose', null, '1619', null);
INSERT INTO `act_ru_identitylink` VALUES ('1626', '1', null, 'candidate', 'Lily', '1623', null, null);
INSERT INTO `act_ru_identitylink` VALUES ('1627', '1', null, 'participant', 'Lily', null, '1619', null);
INSERT INTO `act_ru_identitylink` VALUES ('1706', '1', null, 'candidate', 'Rose', '1705', null, null);
INSERT INTO `act_ru_identitylink` VALUES ('1707', '1', null, 'participant', 'Rose', null, '1701', null);
INSERT INTO `act_ru_identitylink` VALUES ('1708', '1', null, 'candidate', 'Lily', '1705', null, null);
INSERT INTO `act_ru_identitylink` VALUES ('1709', '1', null, 'participant', 'Lily', null, '1701', null);
INSERT INTO `act_ru_identitylink` VALUES ('1715', '1', null, 'candidate', 'Rose', '1714', null, null);
INSERT INTO `act_ru_identitylink` VALUES ('1716', '1', null, 'participant', 'Rose', null, '1710', null);
INSERT INTO `act_ru_identitylink` VALUES ('1717', '1', null, 'candidate', 'Lily', '1714', null, null);
INSERT INTO `act_ru_identitylink` VALUES ('1718', '1', null, 'participant', 'Lily', null, '1710', null);
INSERT INTO `act_ru_identitylink` VALUES ('1724', '1', null, 'candidate', 'Rose', '1723', null, null);
INSERT INTO `act_ru_identitylink` VALUES ('1725', '1', null, 'participant', 'Rose', null, '1719', null);
INSERT INTO `act_ru_identitylink` VALUES ('1726', '1', null, 'candidate', 'Lily', '1723', null, null);
INSERT INTO `act_ru_identitylink` VALUES ('1727', '1', null, 'participant', 'Lily', null, '1719', null);
INSERT INTO `act_ru_identitylink` VALUES ('206', '1', null, 'candidate', 'Rose', '205', null, null);
INSERT INTO `act_ru_identitylink` VALUES ('207', '1', null, 'participant', 'Rose', null, '201', null);
INSERT INTO `act_ru_identitylink` VALUES ('208', '1', null, 'candidate', 'Lily', '205', null, null);
INSERT INTO `act_ru_identitylink` VALUES ('209', '1', null, 'participant', 'Lily', null, '201', null);
INSERT INTO `act_ru_identitylink` VALUES ('306', '1', null, 'candidate', 'Rose', '305', null, null);
INSERT INTO `act_ru_identitylink` VALUES ('307', '1', null, 'participant', 'Rose', null, '301', null);
INSERT INTO `act_ru_identitylink` VALUES ('308', '1', null, 'candidate', 'Lily', '305', null, null);
INSERT INTO `act_ru_identitylink` VALUES ('309', '1', null, 'participant', 'Lily', null, '301', null);
INSERT INTO `act_ru_identitylink` VALUES ('406', '1', null, 'candidate', 'Rose', '405', null, null);
INSERT INTO `act_ru_identitylink` VALUES ('407', '1', null, 'participant', 'Rose', null, '401', null);
INSERT INTO `act_ru_identitylink` VALUES ('408', '1', null, 'candidate', 'Lily', '405', null, null);
INSERT INTO `act_ru_identitylink` VALUES ('409', '1', null, 'participant', 'Lily', null, '401', null);
INSERT INTO `act_ru_identitylink` VALUES ('506', '1', null, 'candidate', 'Rose', '505', null, null);
INSERT INTO `act_ru_identitylink` VALUES ('507', '1', null, 'participant', 'Rose', null, '501', null);
INSERT INTO `act_ru_identitylink` VALUES ('508', '1', null, 'candidate', 'Lily', '505', null, null);
INSERT INTO `act_ru_identitylink` VALUES ('509', '1', null, 'participant', 'Lily', null, '501', null);
INSERT INTO `act_ru_identitylink` VALUES ('606', '1', null, 'candidate', 'Rose', '605', null, null);
INSERT INTO `act_ru_identitylink` VALUES ('607', '1', null, 'participant', 'Rose', null, '601', null);
INSERT INTO `act_ru_identitylink` VALUES ('608', '1', null, 'candidate', 'Lily', '605', null, null);
INSERT INTO `act_ru_identitylink` VALUES ('609', '1', null, 'participant', 'Lily', null, '601', null);
INSERT INTO `act_ru_identitylink` VALUES ('706', '1', null, 'candidate', 'Rose', '705', null, null);
INSERT INTO `act_ru_identitylink` VALUES ('707', '1', null, 'participant', 'Rose', null, '701', null);
INSERT INTO `act_ru_identitylink` VALUES ('708', '1', null, 'candidate', 'Lily', '705', null, null);
INSERT INTO `act_ru_identitylink` VALUES ('709', '1', null, 'participant', 'Lily', null, '701', null);
INSERT INTO `act_ru_identitylink` VALUES ('806', '1', null, 'candidate', 'Rose', '805', null, null);
INSERT INTO `act_ru_identitylink` VALUES ('807', '1', null, 'participant', 'Rose', null, '801', null);
INSERT INTO `act_ru_identitylink` VALUES ('808', '1', null, 'candidate', 'Lily', '805', null, null);
INSERT INTO `act_ru_identitylink` VALUES ('809', '1', null, 'participant', 'Lily', null, '801', null);
INSERT INTO `act_ru_identitylink` VALUES ('906', '1', null, 'candidate', 'Rose', '905', null, null);
INSERT INTO `act_ru_identitylink` VALUES ('907', '1', null, 'participant', 'Rose', null, '901', null);
INSERT INTO `act_ru_identitylink` VALUES ('908', '1', null, 'candidate', 'Lily', '905', null, null);
INSERT INTO `act_ru_identitylink` VALUES ('909', '1', null, 'participant', 'Lily', null, '901', null);

-- ----------------------------
-- Table structure for `act_ru_job`
-- ----------------------------
DROP TABLE IF EXISTS `act_ru_job`;
CREATE TABLE `act_ru_job` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `LOCK_EXP_TIME_` timestamp NULL DEFAULT NULL,
  `LOCK_OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EXCLUSIVE_` tinyint(1) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `RETRIES_` int(11) DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DUEDATE_` timestamp NULL DEFAULT NULL,
  `REPEAT_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_JOB_EXCEPTION` (`EXCEPTION_STACK_ID_`),
  CONSTRAINT `ACT_FK_JOB_EXCEPTION` FOREIGN KEY (`EXCEPTION_STACK_ID_`) REFERENCES `act_ge_bytearray` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of act_ru_job
-- ----------------------------

-- ----------------------------
-- Table structure for `act_ru_task`
-- ----------------------------
DROP TABLE IF EXISTS `act_ru_task`;
CREATE TABLE `act_ru_task` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TASK_DEF_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DELEGATION_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PRIORITY_` int(11) DEFAULT NULL,
  `CREATE_TIME_` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `DUE_DATE_` datetime DEFAULT NULL,
  `SUSPENSION_STATE_` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_TASK_CREATE` (`CREATE_TIME_`),
  KEY `ACT_FK_TASK_EXE` (`EXECUTION_ID_`),
  KEY `ACT_FK_TASK_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_FK_TASK_PROCDEF` (`PROC_DEF_ID_`),
  CONSTRAINT `ACT_FK_TASK_EXE` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_TASK_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_TASK_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of act_ru_task
-- ----------------------------
INSERT INTO `act_ru_task` VALUES ('1005', '1', '1001', '1001', 'suggestId:1:4', '反馈审核', null, null, 'task1', null, null, null, '50', '2017-08-11 15:20:41', null, '1');
INSERT INTO `act_ru_task` VALUES ('105', '1', '101', '101', 'suggestId:1:4', '反馈审核', null, null, 'task1', null, null, null, '50', '2017-08-11 11:42:10', null, '1');
INSERT INTO `act_ru_task` VALUES ('1105', '1', '1101', '1101', 'suggestId:1:4', '反馈审核', null, null, 'task1', null, null, null, '50', '2017-08-11 15:24:49', null, '1');
INSERT INTO `act_ru_task` VALUES ('1205', '1', '1201', '1201', 'suggestId:1:4', '反馈审核', null, null, 'task1', null, null, null, '50', '2017-08-11 15:30:18', null, '1');
INSERT INTO `act_ru_task` VALUES ('1305', '1', '1301', '1301', 'suggestId:1:4', '反馈审核', null, null, 'task1', null, null, null, '50', '2017-08-11 15:33:53', null, '1');
INSERT INTO `act_ru_task` VALUES ('1405', '1', '1401', '1401', 'suggestId:1:4', '反馈审核', null, null, 'task1', null, null, null, '50', '2017-08-11 15:36:25', null, '1');
INSERT INTO `act_ru_task` VALUES ('1414', '1', '1410', '1410', 'suggestId:1:4', '反馈审核', null, null, 'task1', null, null, null, '50', '2017-08-11 15:38:47', null, '1');
INSERT INTO `act_ru_task` VALUES ('1423', '1', '1419', '1419', 'suggestId:1:4', '反馈审核', null, null, 'task1', null, null, null, '50', '2017-08-11 15:43:05', null, '1');
INSERT INTO `act_ru_task` VALUES ('1505', '1', '1501', '1501', 'suggestId:1:4', '反馈审核', null, null, 'task1', null, null, null, '50', '2017-08-11 16:19:48', null, '1');
INSERT INTO `act_ru_task` VALUES ('1605', '1', '1601', '1601', 'suggestId:1:4', '反馈审核', null, null, 'task1', null, null, null, '50', '2017-08-11 16:24:14', null, '1');
INSERT INTO `act_ru_task` VALUES ('1614', '1', '1610', '1610', 'suggestId:1:4', '反馈审核', null, null, 'task1', null, null, null, '50', '2017-08-11 16:26:20', null, '1');
INSERT INTO `act_ru_task` VALUES ('1623', '1', '1619', '1619', 'suggestId:1:4', '反馈审核', null, null, 'task1', null, null, null, '50', '2017-08-11 16:27:48', null, '1');
INSERT INTO `act_ru_task` VALUES ('1705', '1', '1701', '1701', 'suggestId:1:4', '反馈审核', null, null, 'task1', null, null, null, '50', '2017-08-11 17:46:47', null, '1');
INSERT INTO `act_ru_task` VALUES ('1714', '1', '1710', '1710', 'suggestId:1:4', '反馈审核', null, null, 'task1', null, null, null, '50', '2017-08-11 17:48:39', null, '1');
INSERT INTO `act_ru_task` VALUES ('1723', '1', '1719', '1719', 'suggestId:1:4', '反馈审核', null, null, 'task1', null, null, null, '50', '2017-08-11 17:51:09', null, '1');
INSERT INTO `act_ru_task` VALUES ('205', '1', '201', '201', 'suggestId:1:4', '反馈审核', null, null, 'task1', null, null, null, '50', '2017-08-11 11:44:11', null, '1');
INSERT INTO `act_ru_task` VALUES ('305', '1', '301', '301', 'suggestId:1:4', '反馈审核', null, null, 'task1', null, null, null, '50', '2017-08-11 11:45:37', null, '1');
INSERT INTO `act_ru_task` VALUES ('405', '1', '401', '401', 'suggestId:1:4', '反馈审核', null, null, 'task1', null, null, null, '50', '2017-08-11 13:38:25', null, '1');
INSERT INTO `act_ru_task` VALUES ('505', '1', '501', '501', 'suggestId:1:4', '反馈审核', null, null, 'task1', null, null, null, '50', '2017-08-11 13:41:18', null, '1');
INSERT INTO `act_ru_task` VALUES ('605', '1', '601', '601', 'suggestId:1:4', '反馈审核', null, null, 'task1', null, null, null, '50', '2017-08-11 13:47:37', null, '1');
INSERT INTO `act_ru_task` VALUES ('705', '1', '701', '701', 'suggestId:1:4', '反馈审核', null, null, 'task1', null, null, null, '50', '2017-08-11 13:51:49', null, '1');
INSERT INTO `act_ru_task` VALUES ('805', '1', '801', '801', 'suggestId:1:4', '反馈审核', null, null, 'task1', null, null, null, '50', '2017-08-11 15:12:37', null, '1');
INSERT INTO `act_ru_task` VALUES ('905', '1', '901', '901', 'suggestId:1:4', '反馈审核', null, null, 'task1', null, null, null, '50', '2017-08-11 15:15:59', null, '1');

-- ----------------------------
-- Table structure for `act_ru_variable`
-- ----------------------------
DROP TABLE IF EXISTS `act_ru_variable`;
CREATE TABLE `act_ru_variable` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin NOT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint(20) DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_VARIABLE_TASK_ID` (`TASK_ID_`),
  KEY `ACT_FK_VAR_EXE` (`EXECUTION_ID_`),
  KEY `ACT_FK_VAR_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_FK_VAR_BYTEARRAY` (`BYTEARRAY_ID_`),
  CONSTRAINT `ACT_FK_VAR_BYTEARRAY` FOREIGN KEY (`BYTEARRAY_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_VAR_EXE` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_VAR_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of act_ru_variable
-- ----------------------------
INSERT INTO `act_ru_variable` VALUES ('1003', '1', 'string', 'userId', '1001', '1001', null, null, null, null, 'Rose,Lily', null);
INSERT INTO `act_ru_variable` VALUES ('103', '1', 'string', 'userId', '101', '101', null, null, null, null, 'Rose,Lily', null);
INSERT INTO `act_ru_variable` VALUES ('1103', '1', 'string', 'userId', '1101', '1101', null, null, null, null, 'Rose,Lily', null);
INSERT INTO `act_ru_variable` VALUES ('1203', '1', 'string', 'userId', '1201', '1201', null, null, null, null, 'Rose,Lily', null);
INSERT INTO `act_ru_variable` VALUES ('1303', '1', 'string', 'userId', '1301', '1301', null, null, null, null, 'Rose,Lily', null);
INSERT INTO `act_ru_variable` VALUES ('1403', '1', 'string', 'userId', '1401', '1401', null, null, null, null, 'Rose,Lily', null);
INSERT INTO `act_ru_variable` VALUES ('1412', '1', 'string', 'userId', '1410', '1410', null, null, null, null, 'Rose,Lily', null);
INSERT INTO `act_ru_variable` VALUES ('1421', '1', 'string', 'userId', '1419', '1419', null, null, null, null, 'Rose,Lily', null);
INSERT INTO `act_ru_variable` VALUES ('1503', '1', 'string', 'userId', '1501', '1501', null, null, null, null, 'Rose,Lily', null);
INSERT INTO `act_ru_variable` VALUES ('1603', '1', 'string', 'userId', '1601', '1601', null, null, null, null, 'Rose,Lily', null);
INSERT INTO `act_ru_variable` VALUES ('1612', '1', 'string', 'userId', '1610', '1610', null, null, null, null, 'Rose,Lily', null);
INSERT INTO `act_ru_variable` VALUES ('1621', '1', 'string', 'userId', '1619', '1619', null, null, null, null, 'Rose,Lily', null);
INSERT INTO `act_ru_variable` VALUES ('1703', '1', 'string', 'userId', '1701', '1701', null, null, null, null, 'Rose,Lily', null);
INSERT INTO `act_ru_variable` VALUES ('1712', '1', 'string', 'userId', '1710', '1710', null, null, null, null, 'Rose,Lily', null);
INSERT INTO `act_ru_variable` VALUES ('1721', '1', 'string', 'userId', '1719', '1719', null, null, null, null, 'Rose,Lily', null);
INSERT INTO `act_ru_variable` VALUES ('203', '1', 'string', 'userId', '201', '201', null, null, null, null, 'Rose,Lily', null);
INSERT INTO `act_ru_variable` VALUES ('303', '1', 'string', 'userId', '301', '301', null, null, null, null, 'Rose,Lily', null);
INSERT INTO `act_ru_variable` VALUES ('403', '1', 'string', 'userId', '401', '401', null, null, null, null, 'Rose,Lily', null);
INSERT INTO `act_ru_variable` VALUES ('503', '1', 'string', 'userId', '501', '501', null, null, null, null, 'Rose,Lily', null);
INSERT INTO `act_ru_variable` VALUES ('603', '1', 'string', 'userId', '601', '601', null, null, null, null, 'Rose,Lily', null);
INSERT INTO `act_ru_variable` VALUES ('703', '1', 'string', 'userId', '701', '701', null, null, null, null, 'Rose,Lily', null);
INSERT INTO `act_ru_variable` VALUES ('803', '1', 'string', 'userId', '801', '801', null, null, null, null, 'Rose,Lily', null);
INSERT INTO `act_ru_variable` VALUES ('903', '1', 'string', 'userId', '901', '901', null, null, null, null, 'Rose,Lily', null);

-- ----------------------------
-- Table structure for `hmdm_pt_customer`
-- ----------------------------
DROP TABLE IF EXISTS `hmdm_pt_customer`;
CREATE TABLE `hmdm_pt_customer` (
  `customer_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1006 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hmdm_pt_customer
-- ----------------------------
INSERT INTO `hmdm_pt_customer` VALUES ('1001', 'jie', 'jie.zhou03@hand-china.com', '123456');
INSERT INTO `hmdm_pt_customer` VALUES ('1002', 'test', 'test', '123456');
INSERT INTO `hmdm_pt_customer` VALUES ('1003', 'Joe', '872007871@qq.com', '111111');
INSERT INTO `hmdm_pt_customer` VALUES ('1004', 'admin1', 'zhian.huang@hand-china.com', 'adminadmin');
INSERT INTO `hmdm_pt_customer` VALUES ('1005', 'emailSender', 's872007871@163.com', 'gfhbmddijxnrfxov');

-- ----------------------------
-- Table structure for `hmdm_pt_downrecord`
-- ----------------------------
DROP TABLE IF EXISTS `hmdm_pt_downrecord`;
CREATE TABLE `hmdm_pt_downrecord` (
  `record_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `customer_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `time` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`record_id`),
  KEY `customer_id` (`customer_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `customer_id` FOREIGN KEY (`customer_id`) REFERENCES `hmdm_pt_customer` (`customer_id`),
  CONSTRAINT `hmdm_pt_downrecord_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `hmdm_pt_product` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1004 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hmdm_pt_downrecord
-- ----------------------------
INSERT INTO `hmdm_pt_downrecord` VALUES ('1001', '1001', '1001', '2017-08-02 10:34:31');
INSERT INTO `hmdm_pt_downrecord` VALUES ('1002', '1003', '1002', '2017-08-05 09:14:12');
INSERT INTO `hmdm_pt_downrecord` VALUES ('1003', '1003', '1001', '2017-08-05 09:16:37');

-- ----------------------------
-- Table structure for `hmdm_pt_product`
-- ----------------------------
DROP TABLE IF EXISTS `hmdm_pt_product`;
CREATE TABLE `hmdm_pt_product` (
  `product_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `version` varchar(20) NOT NULL,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`product_id`),
  KEY `state_id` (`state`),
  CONSTRAINT `state_id` FOREIGN KEY (`state`) REFERENCES `hmdm_pt_productstate` (`state_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hmdm_pt_product
-- ----------------------------
INSERT INTO `hmdm_pt_product` VALUES ('1001', 'hmdm', '1.0', '1001');
INSERT INTO `hmdm_pt_product` VALUES ('1002', 'product', '1.0', '1002');

-- ----------------------------
-- Table structure for `hmdm_pt_productstate`
-- ----------------------------
DROP TABLE IF EXISTS `hmdm_pt_productstate`;
CREATE TABLE `hmdm_pt_productstate` (
  `state_id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`state_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hmdm_pt_productstate
-- ----------------------------
INSERT INTO `hmdm_pt_productstate` VALUES ('1001', 'online');
INSERT INTO `hmdm_pt_productstate` VALUES ('1002', 'test');

-- ----------------------------
-- Table structure for `hmdm_pt_product_function`
-- ----------------------------
DROP TABLE IF EXISTS `hmdm_pt_product_function`;
CREATE TABLE `hmdm_pt_product_function` (
  `function_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `function_name` varchar(255) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  PRIMARY KEY (`function_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `hmdm_pt_product_function_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `hmdm_pt_product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hmdm_pt_product_function
-- ----------------------------
INSERT INTO `hmdm_pt_product_function` VALUES ('1', '文档', '1001');
INSERT INTO `hmdm_pt_product_function` VALUES ('2', '页面', '1002');
INSERT INTO `hmdm_pt_product_function` VALUES ('3', '文档', '1002');
INSERT INTO `hmdm_pt_product_function` VALUES ('4', '页面', '1001');

-- ----------------------------
-- Table structure for `hmdm_pt_role`
-- ----------------------------
DROP TABLE IF EXISTS `hmdm_pt_role`;
CREATE TABLE `hmdm_pt_role` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(50) NOT NULL,
  `role_description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hmdm_pt_role
-- ----------------------------
INSERT INTO `hmdm_pt_role` VALUES ('1', 'ROLE_USER', '普通用户');
INSERT INTO `hmdm_pt_role` VALUES ('2', 'ROLE_ADMIN', '管理员');

-- ----------------------------
-- Table structure for `hmdm_pt_suggesttype`
-- ----------------------------
DROP TABLE IF EXISTS `hmdm_pt_suggesttype`;
CREATE TABLE `hmdm_pt_suggesttype` (
  `type_id` bigint(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `OBJECT_VERSION_NUMBER` bigint(20) DEFAULT '1',
  `REQUEST_ID` bigint(20) DEFAULT '-1',
  `PROGRAM_ID` bigint(20) DEFAULT '-1',
  `CREATED_BY` bigint(20) DEFAULT '-1',
  `CREATION_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `LAST_UPDATED_BY` bigint(20) DEFAULT '-1',
  `LAST_UPDATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `LAST_UPDATE_LOGIN` bigint(20) DEFAULT '-1',
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hmdm_pt_suggesttype
-- ----------------------------
INSERT INTO `hmdm_pt_suggesttype` VALUES ('1001', 'suggestion', '1', '-1', '-1', '-1', '2017-08-01 10:33:51', '-1', '2017-08-01 10:33:51', '-1');

-- ----------------------------
-- Table structure for `hmdm_pt_suggest_images`
-- ----------------------------
DROP TABLE IF EXISTS `hmdm_pt_suggest_images`;
CREATE TABLE `hmdm_pt_suggest_images` (
  `images_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `suggest_id` bigint(20) NOT NULL,
  `image1` varchar(200) DEFAULT NULL,
  `image2` varchar(200) DEFAULT NULL,
  `image3` varchar(200) DEFAULT NULL,
  `image4` varchar(200) DEFAULT NULL,
  `image5` varchar(200) DEFAULT NULL,
  `image6` varchar(200) DEFAULT NULL,
  `image7` varchar(200) DEFAULT NULL,
  `image8` varchar(200) DEFAULT NULL,
  `image9` varchar(200) DEFAULT NULL,
  `image10` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`images_id`),
  KEY `suggest_id` (`suggest_id`),
  CONSTRAINT `hmdm_pt_suggest_images_ibfk_1` FOREIGN KEY (`suggest_id`) REFERENCES `hmdm_pt_suggest_info` (`suggest_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hmdm_pt_suggest_images
-- ----------------------------
INSERT INTO `hmdm_pt_suggest_images` VALUES ('2', '7', '/WEB-INF/images/suggestInfo/IMG_1458.JPG', null, null, null, null, null, null, null, null, null);
INSERT INTO `hmdm_pt_suggest_images` VALUES ('3', '8', '/WEB-INF/images/suggestInfo/IMG_1458.JPG', null, null, null, null, null, null, null, null, null);
INSERT INTO `hmdm_pt_suggest_images` VALUES ('4', '9', 'D:\\idea projects\\HmdmPortals\\src\\main\\webapp/WEB-INF/images/suggestInfo/IMG_1458.JPG', null, null, null, null, null, null, null, null, null);
INSERT INTO `hmdm_pt_suggest_images` VALUES ('5', '10', 'D:\\idea projects\\HmdmPortals\\src\\main\\webapp/WEB-INF/images/suggestInfo/IMG_1458.JPG', null, null, null, null, null, null, null, null, null);
INSERT INTO `hmdm_pt_suggest_images` VALUES ('6', '11', 'D:\\idea projects\\HmdmPortals\\src\\main\\webapp/WEB-INF/images/suggestInfo/', null, null, null, null, null, null, null, null, null);
INSERT INTO `hmdm_pt_suggest_images` VALUES ('7', '12', 'D:\\idea projects\\HmdmPortals\\src\\main\\webapp/WEB-INF/images/suggestInfo/IMG_1457.JPG', null, null, null, null, null, null, null, null, null);
INSERT INTO `hmdm_pt_suggest_images` VALUES ('8', '13', 'D:\\idea projects\\HmdmPortals\\src\\main\\webapp/WEB-INF/images/suggestInfo/IMG_1461.JPG', null, null, null, null, null, null, null, null, null);
INSERT INTO `hmdm_pt_suggest_images` VALUES ('9', '14', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `hmdm_pt_suggest_images` VALUES ('10', '15', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `hmdm_pt_suggest_images` VALUES ('11', '16', 'D:\\idea projects\\HmdmPortals\\src\\main\\webapp/WEB-INF/images/suggestInfo/IMG_1457.JPG', 'D:\\idea projects\\HmdmPortals\\src\\main\\webapp/WEB-INF/images/suggestInfo/IMG_1458.JPG', 'D:\\idea projects\\HmdmPortals\\src\\main\\webapp/WEB-INF/images/suggestInfo/IMG_1462.JPG', null, null, null, null, null, null, null);
INSERT INTO `hmdm_pt_suggest_images` VALUES ('12', '17', '/images/suggestInfo/1.PNG', null, null, null, null, null, null, null, null, null);
INSERT INTO `hmdm_pt_suggest_images` VALUES ('13', '18', '/images/suggestInfo/3.PNG', '/images/suggestInfo/4.PNG', '/images/suggestInfo/8.PNG', null, null, null, null, null, null, null);
INSERT INTO `hmdm_pt_suggest_images` VALUES ('14', '19', '/images/suggestInfo/4.PNG', null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `hmdm_pt_suggest_info`
-- ----------------------------
DROP TABLE IF EXISTS `hmdm_pt_suggest_info`;
CREATE TABLE `hmdm_pt_suggest_info` (
  `suggest_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `function_id` bigint(20) NOT NULL,
  `suggest_info` varchar(1000) NOT NULL,
  `suggest_file` varchar(200) DEFAULT NULL,
  `process_instance_id` varchar(64) NOT NULL,
  `customer_id` bigint(20) NOT NULL,
  PRIMARY KEY (`suggest_id`),
  KEY `function_id` (`function_id`),
  KEY `customer_id` (`customer_id`),
  CONSTRAINT `hmdm_pt_suggest_info_ibfk_1` FOREIGN KEY (`function_id`) REFERENCES `hmdm_pt_product_function` (`function_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `hmdm_pt_suggest_info_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `hmdm_pt_customer` (`customer_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hmdm_pt_suggest_info
-- ----------------------------
INSERT INTO `hmdm_pt_suggest_info` VALUES ('1', '1', '测试', null, '701', '1003');
INSERT INTO `hmdm_pt_suggest_info` VALUES ('2', '1', '测试', null, '701', '1003');
INSERT INTO `hmdm_pt_suggest_info` VALUES ('3', '1', '测试', null, '701', '1003');
INSERT INTO `hmdm_pt_suggest_info` VALUES ('4', '1', '测试', null, '701', '1003');
INSERT INTO `hmdm_pt_suggest_info` VALUES ('5', '1', '测试', null, '801', '1003');
INSERT INTO `hmdm_pt_suggest_info` VALUES ('6', '1', '测试', null, '901', '1003');
INSERT INTO `hmdm_pt_suggest_info` VALUES ('7', '1', '测试', null, '1001', '1003');
INSERT INTO `hmdm_pt_suggest_info` VALUES ('8', '1', '测试3', null, '1101', '1003');
INSERT INTO `hmdm_pt_suggest_info` VALUES ('9', '1', '测试5', null, '1201', '1003');
INSERT INTO `hmdm_pt_suggest_info` VALUES ('10', '1', '测试7', null, '1301', '1003');
INSERT INTO `hmdm_pt_suggest_info` VALUES ('11', '1', '测试9', null, '1401', '1003');
INSERT INTO `hmdm_pt_suggest_info` VALUES ('12', '1', '测试9', null, '1410', '1003');
INSERT INTO `hmdm_pt_suggest_info` VALUES ('13', '1', '测试13', null, '1419', '1003');
INSERT INTO `hmdm_pt_suggest_info` VALUES ('14', '1', '测试15', null, '1501', '1003');
INSERT INTO `hmdm_pt_suggest_info` VALUES ('15', '1', '测试11', null, '1610', '1003');
INSERT INTO `hmdm_pt_suggest_info` VALUES ('16', '1', '测试11', null, '1619', '1003');
INSERT INTO `hmdm_pt_suggest_info` VALUES ('17', '1', 'test', null, '1701', '1003');
INSERT INTO `hmdm_pt_suggest_info` VALUES ('18', '1', '1111', null, '1710', '1003');
INSERT INTO `hmdm_pt_suggest_info` VALUES ('19', '1', '11111', null, '1719', '1003');

-- ----------------------------
-- Table structure for `hmdm_pt_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `hmdm_pt_user_role`;
CREATE TABLE `hmdm_pt_user_role` (
  `user_role_id` int(11) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`user_role_id`),
  KEY `FK_user_role_user` (`user_id`),
  KEY `FK_user_role_role` (`role_id`),
  CONSTRAINT `FK_user_role_role` FOREIGN KEY (`role_id`) REFERENCES `hmdm_pt_role` (`role_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_user_role_user` FOREIGN KEY (`user_id`) REFERENCES `hmdm_pt_customer` (`customer_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hmdm_pt_user_role
-- ----------------------------
INSERT INTO `hmdm_pt_user_role` VALUES ('1', '1001', '1');
INSERT INTO `hmdm_pt_user_role` VALUES ('2', '1002', '1');
INSERT INTO `hmdm_pt_user_role` VALUES ('3', '1001', '2');
INSERT INTO `hmdm_pt_user_role` VALUES ('4', '1003', '1');
INSERT INTO `hmdm_pt_user_role` VALUES ('5', '1003', '2');
INSERT INTO `hmdm_pt_user_role` VALUES ('6', '1004', '1');
INSERT INTO `hmdm_pt_user_role` VALUES ('7', '1004', '2');

-- ----------------------------
-- Table structure for `hr_employee`
-- ----------------------------
DROP TABLE IF EXISTS `hr_employee`;
CREATE TABLE `hr_employee` (
  `employee_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `join_date` datetime DEFAULT NULL,
  `gender` varchar(4) DEFAULT NULL,
  `function_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`employee_id`),
  KEY `fk_function_id` (`function_id`),
  CONSTRAINT `fk_function_id` FOREIGN KEY (`function_id`) REFERENCES `hmdm_pt_product_function` (`function_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hr_employee
-- ----------------------------
INSERT INTO `hr_employee` VALUES ('10001', 'Rose', '872007871@qq.com', '18777455033', '11111111', '2017-08-11 09:50:45', 'M', '1');
INSERT INTO `hr_employee` VALUES ('10002', 'Lily', 'zhian.huang@hand-china.com', '17621662565', '11111111', '2017-08-11 09:52:37', 'F', '1');
