INSERER UN FILM : 
```sql
INSERT INTO Movie (ID_Movie, Title_Movie, Runing_time_Movie, Realease_Date_Movie) VALUES (NULL, 'Iron Man', '126 Minutes', '2008');


```

SELECTIONNER UN FILM + Décroissant :
```sql
SELECT `Movie`.`Title_Movie` `Realease_Date_Movie`,`Movie`.`Runing_time_Movie` FROM `Movie` ORDER BY `ID_Film` DESC 

```

Ordre Alphabetique : 
```sql
SELECT `Actor`.`Name_Actor`, `Actor`.`Surname_Actor`, `Actor`.`Role_Actor`, `Actor`.`Sexe_Actor`, `Actor`.`Birthday_Actor` FROM `Actor` ORDER BY `Actor`.`Surname_Actor` ASC 

```

Add acteur : 
```sql
INSERT INTO `Actor` (`ID_Actor`, `Name_Actor`, `Surname_Actor`, `Role_Actor`, `Sexe_Actor`, `Birthday_Actor`) VALUES (NULL, 'Robert', 'Downey.Jr', 'Iron Man', 'Male', DATE('1965-4-4'));

```

Suppr Acteur : 
```sql
DELETE FROM `Acteur` WHERE `Acteur`.`ID_Acteur` = 4;

```

Suppr Film : 
```sql
DELETE FROM `Movie` WHERE `Actor`.`ID_Film` = 4;

```