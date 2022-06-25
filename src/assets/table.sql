-- RUNNINUS_DEV.LIST definition

CREATE TABLE `LIST` (
  `UID` bigint NOT NULL AUTO_INCREMENT,
  `MEET_ID` bigint NOT NULL,
  `USER_ID` bigint NOT NULL,
  `REG_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`UID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- RUNNINUS_DEV.MEET definition

CREATE TABLE `MEET` (
  `UID` bigint NOT NULL AUTO_INCREMENT,
  `NAME` varchar(30) NOT NULL,
  `HOST` bigint NOT NULL,
  `STATE` char(2) NOT NULL DEFAULT '0',
  `POINT` point DEFAULT NULL,
  `MAX_NUM` int NOT NULL,
  `REG_DATE` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `EX_DISTANCE` int DEFAULT NULL,
  `EX_START_TIME` datetime DEFAULT NULL,
  `EX_END_TIME` datetime DEFAULT NULL,
  `DISTANCE` int DEFAULT NULL,
  `START_TIME` datetime DEFAULT NULL,
  `END_TIME` datetime DEFAULT NULL,
  `LEVEL` char(1) NOT NULL,
  PRIMARY KEY (`UID`),
  KEY `HOSTID` (`HOST`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- RUNNINUS_DEV.MEETLOG definition

CREATE TABLE `MEETLOG` (
  `UID` bigint NOT NULL AUTO_INCREMENT,
  `MEET_ID` bigint NOT NULL,
  `USER_ID` bigint NOT NULL,
  `DATE` datetime NOT NULL,
  `CODE` char(2) NOT NULL DEFAULT '0',
  `CONTENT` text,
  PRIMARY KEY (`UID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- RUNNINUS_DEV.`USER` definition

CREATE TABLE `USER` (
  `UID` bigint NOT NULL AUTO_INCREMENT,
  `OAUTH_ID` text NOT NULL,
  `NICK` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `SEX` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `BORN` date DEFAULT NULL,
  `DISTANCE` int DEFAULT NULL,
  `POINT_ADDRESS` point DEFAULT NULL,
  `TEXT_ADDRESS` text,
  `PHONE` varchar(13) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `MANNER_POINT` decimal(10,0) DEFAULT '100',
  `POWER` decimal(10,0) DEFAULT NULL,
  `POINT` int DEFAULT NULL,
  PRIMARY KEY (`UID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



-- RUNNINUS_DEV.`USER_AUTH` definition

CREATE TABLE `USER_AUTH` (
  `UID` bigint NOT NULL AUTO_INCREMENT,
  `USER_UID` bigint NOT NULL,
  `REFRESH_TOKEN` varchar(255) NOT NULL,
  `CREATED_AT` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`UID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;