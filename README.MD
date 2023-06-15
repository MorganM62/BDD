INSERER UN FILM : 

INSERT INTO Film (ID_Film, Titre_Film, Durée_Film, Année_de_Sortie_Film) VALUES (NULL, 'Iron Man', '126 Minutes', '2008');

SELECTIONNER UN FILM + Décroissant :

SELECT `Film`.`Titre_Film` `Année_de_Sortie_Film`,`Film`.`Année_de_Sortie_Film` FROM `Film` ORDER BY `ID_Film` DESC 

Ordre Alphabetique : 

SELECT `Acteur`.`Prénom_Acteur`, `Acteur`.`Date_de_naissance_Acteur`, `Acteur`.`Nom_Acteur`, `Actrice`.`Nom_Actrice`, `Actrice`.`Prénom_Actrice`, `Actrice`.`Date_de_naissance_Actrice` FROM `Acteur` , `Actrice` ORDER BY `Acteur`.`Nom_Acteur` ASC, `Acteur`.`Prénom_Acteur` ASC, `Actrice`.`Nom_Actrice` ASC 

Add acteur : 

INSERT INTO `Acteur` (`ID_Acteur`, `Nom_Acteur`, `Prénom_Acteur`, `Rôle_Acteur`, `Date_de_naissance_Acteur`) VALUES (NULL, 'Downey.Jr', 'Robert', 'Iron Man', '4 avril 1965 ');

Suppr acteur : 

DELETE FROM `Acteur` WHERE `Acteur`.`ID_Acteur` = 4;

Suppr Film : 

DELETE FROM `Film` WHERE `Acteur`.`ID_Film` = 4;
