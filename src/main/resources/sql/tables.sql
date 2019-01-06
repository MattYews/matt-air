CREATE TABLE matt_air.flight (
	ID INT(10) UNSIGNED AUTO_INCREMENT,
	FK_PlaneID SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0,
	FK_StartLocationID SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0,
	FK_DestinationID SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0,
	DepartureDateTime DATETIME NOT NULL,
	ArrivalDateTime DATETIME NOT NULL,
	CreatedDateTime DATETIME NOT NULL,
	OBJ_VERSION SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0,
	PRIMARY KEY (ID)
) ENGINE=INNODB;

CREATE TABLE matt_air.location (
	ID SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0,
	City VARCHAR(50) DEFAULT '',
	Country VARCHAR(50) DEFAULT '',
	OBJ_VERSION SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0,
	PRIMARY KEY (ID)
) ENGINE=INNODB;

CREATE TABLE matt_air.plane (
	ID SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0,
	CallSign VARCHAR(10) NOT NULL DEFAULT '',
	PlaneType VARCHAR(100) NOT NULL DEFAULT '',
	InUse TINYINT(1) UNSIGNED NOT NULL DEFAULT 0,
	OBJ_VERSION SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0,
	PRIMARY KEY (ID)
) ENGINE=INNODB;