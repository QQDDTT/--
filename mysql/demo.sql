use my_database;

CREATE DATABASE IF NOT EXISTS my_database
  CHARACTER SET utf8mb4
  COLLATE utf8mb4_general_ci;

DROP DATABASE IF EXISTS my_database;


CREATE TABLE user (
	id VARCHAR(7) NOT NULL PRIMARY KEY,
  name_zh VARCHAR(32) NOT NULL,
  name_ja VARCHAR(32) NOT NULL,
  name_en VARCHAR(32) NOT NULL,
  gender VARCHAR(8),
  birthday DATE,
  create_date DATE DEFAULT (CURRENT_DATE),
  end_date DATE DEFAULT (CURRENT_DATE + INTERVAL 1 YEAR),
	tel VARCHAR(13),
  mail VARCHAR(128),
  member_type VARCHAR(8) DEFAULT '普通',
  cell_permission VARCHAR(8) DEFAULT TRUE,
  cell_rate VARCHAR(8) DEFAULT '90',
  point_permission VARCHAR(8) DEFAULT TRUE,
  point VARCHAR(128) DEFAULT 0,
  description VARCHAR(256)
);

DROP TABLE user;



SELECT * FROM user
WHERE id = "TD10002";

SELECT * FROM user
WHERE tel = '080-9199-6093';