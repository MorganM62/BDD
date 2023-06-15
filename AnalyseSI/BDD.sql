DROP TABLE IF EXISTS `Use`;
DROP TABLE IF EXISTS Play_in;
DROP TABLE IF EXISTS Realise;
DROP TABLE IF EXISTS `User`;
DROP TABLE IF EXISTS Movie;
DROP TABLE IF EXISTS Realisator;
DROP TABLE IF EXISTS Actor;

CREATE TABLE `User` (
  ID_user INT AUTO_INCREMENT NOT NULL,
  Admin_user INT,
  Visitor_user INT,
  PRIMARY KEY (ID_user)
) ENGINE=InnoDB;

CREATE TABLE Actor (
  ID_Actor INT AUTO_INCREMENT NOT NULL,
  Name_Actor VARCHAR(255),
  Surname_Actor VARCHAR(255),
  Role_Actor VARCHAR(255),
  Sexe_Actor VARCHAR(255),
  PRIMARY KEY (ID_Actor)
) ENGINE=InnoDB;

CREATE TABLE Realisator (
  ID_Realisator INT AUTO_INCREMENT NOT NULL,
  Name_Realisator VARCHAR(255),
  Surname_Realisator VARCHAR(255),
  PRIMARY KEY (ID_Realisator)
) ENGINE=InnoDB;

CREATE TABLE Movie (
  ID INT AUTO_INCREMENT NOT NULL,
  Title_Movie VARCHAR(255),
  Runing_time_Movie VARCHAR(255),
  PRIMARY KEY (ID)
) ENGINE=InnoDB;

CREATE TABLE Play_in (
  ID_Actor INT AUTO_INCREMENT NOT NULL,
  ID INT NOT NULL,
  PRIMARY KEY (ID_Actor, ID),
  FOREIGN KEY (ID_Actor) REFERENCES Actor (ID_Actor),
  FOREIGN KEY (ID) REFERENCES Movie (ID)
) ENGINE=InnoDB;

CREATE TABLE Realise (
  ID_Realisator INT AUTO_INCREMENT NOT NULL,
  ID INT NOT NULL,
  PRIMARY KEY (ID_Realisator, ID),
  FOREIGN KEY (ID_Realisator) REFERENCES Realisator (ID_Realisator),
  FOREIGN KEY (ID) REFERENCES Movie (ID)
) ENGINE=InnoDB;

CREATE TABLE `Use` (
  ID_user INT AUTO_INCREMENT NOT NULL,
  ID INT NOT NULL,
  ID_Actor INT NOT NULL,
  ID_Realisator INT NOT NULL,
  PRIMARY KEY (ID_user, ID, ID_Actor, ID_Realisator),
  FOREIGN KEY (ID_user) REFERENCES `User` (ID_user),
  FOREIGN KEY (ID) REFERENCES Movie (ID),
  FOREIGN KEY (ID_Actor) REFERENCES Actor (ID_Actor),
  FOREIGN KEY (ID_Realisator) REFERENCES Realisator (ID_Realisator)
) ENGINE=InnoDB;