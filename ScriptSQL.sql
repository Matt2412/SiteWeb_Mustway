#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


#------------------------------------------------------------
# Table: Utilisatrice
#------------------------------------------------------------

CREATE TABLE Utilisatrice(
        prenomUtilisatrice Varchar (50) ,
        nomUtilisatrice    Varchar (50) ,
        DateNaissance      Date ,
        genre              Bool ,
        email              Varchar (50) NOT NULL ,
        DateInscription    Date ,
        idLieu             Int ,
        PRIMARY KEY (email )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Recette
#------------------------------------------------------------

CREATE TABLE Recette(
        titre              Varchar (50) NOT NULL ,
        categorieRecette   Varchar (50) ,
        descriptionRecette Varchar (50) NOT NULL ,
        nbPers             Int ,
        DateProposition    Date ,
        email              Varchar (50) ,
        PRIMARY KEY (titre )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Produit
#------------------------------------------------------------

CREATE TABLE Produit(
        NomProduit       Varchar (50) NOT NULL ,
        categorieProduit Varchar (50) ,
        QuantiteProduit  Float ,
        PRIMARY KEY (NomProduit )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Lieu
#------------------------------------------------------------

CREATE TABLE Lieu(
        latitude  Float ,
        longitude Float ,
        idLieu    Int NOT NULL ,
        PRIMARY KEY (idLieu )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Zone geographique
#------------------------------------------------------------

CREATE TABLE Zone_geographique(
        Continent Varchar (50) ,
        PaysZ     Varchar (50) ,
        idLieu    Int NOT NULL ,
        PRIMARY KEY (idLieu )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Adresse
#------------------------------------------------------------

CREATE TABLE Adresse(
        Ville        Varchar (50) ,
        CodePostal   Varchar (50) ,
        Voie         Varchar (50) ,
        NumeroDeVoie Int ,
        PaysA        Varchar (50) ,
        idLieu       Int NOT NULL ,
        PRIMARY KEY (idLieu )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Ingredient
#------------------------------------------------------------

CREATE TABLE Ingredient(
        NomIngredient       Varchar (25) NOT NULL ,
        CategorieIngredient Varchar (25) ,
        QuantiteIngredient  Float ,
        PRIMARY KEY (NomIngredient )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Unit¨¦
#------------------------------------------------------------

CREATE TABLE Unite(
        NomUnite    Varchar (25) NOT NULL ,
        Abreviation Varchar (25) ,
        PRIMARY KEY (NomUnite )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Etape
#------------------------------------------------------------

CREATE TABLE Etape(
        idEtape     Int NOT NULL ,
        Instruction Longtext ,
        Numero      Int ,
        PRIMARY KEY (idEtape )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Ustensile
#------------------------------------------------------------

CREATE TABLE Ustensile(
        nomUstensile Varchar (25) NOT NULL ,
        PRIMARY KEY (nomUstensile )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Importation
#------------------------------------------------------------

CREATE TABLE Importation(
        NomImportation  Varchar (50) ,
        idImportation   Int NOT NULL ,
        DateImportation Date ,
        PRIMARY KEY (idImportation )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Transformer
#------------------------------------------------------------

CREATE TABLE Transformer(
        QuantiteTransformation Float ,
        NomIngredient          Varchar (25) NOT NULL ,
        NomProduit             Varchar (50) NOT NULL ,
        NomUnite               Varchar (25) NOT NULL ,
        PRIMARY KEY (NomIngredient ,NomProduit ,NomUnite )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Composer
#------------------------------------------------------------

CREATE TABLE Composer(
        QuantiteProduit Float ,
        NomIngredient   Varchar (25) NOT NULL ,
        titre           Varchar (50) NOT NULL ,
        NomUnite        Varchar (25) NOT NULL ,
        PRIMARY KEY (NomIngredient ,titre ,NomUnite )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Contenir
#------------------------------------------------------------

CREATE TABLE Contenir(
        QuantiteIngredient Float ,
        NomProduit         Varchar (50) NOT NULL ,
        titre              Varchar (50) NOT NULL ,
        NomUnite           Varchar (25) NOT NULL ,
        PRIMARY KEY (NomProduit ,titre ,NomUnite )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Provenir
#------------------------------------------------------------

CREATE TABLE Provenir(
        QuantiteIngredientImportee Float ,
        idLieu                     Int NOT NULL ,
        idImportation              Int NOT NULL ,
        NomIngredient              Varchar (25) NOT NULL ,
        PRIMARY KEY (idLieu ,idImportation ,NomIngredient )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Fabriquer
#------------------------------------------------------------

CREATE TABLE Fabriquer(
        QuantiteProduitImporte Float ,
        NomProduit             Varchar (50) NOT NULL ,
        idLieu                 Int NOT NULL ,
        idImportation          Int NOT NULL ,
        PRIMARY KEY (NomProduit ,idLieu ,idImportation )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Elaborer
#------------------------------------------------------------

CREATE TABLE Elaborer(
        titre   Varchar (50) NOT NULL ,
        idEtape Int NOT NULL ,
        PRIMARY KEY (titre ,idEtape )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Utiliser
#------------------------------------------------------------

CREATE TABLE Utiliser(
        idEtape      Int NOT NULL ,
        nomUstensile Varchar (25) NOT NULL ,
        PRIMARY KEY (idEtape ,nomUstensile )
)ENGINE=InnoDB;

ALTER TABLE Utilisatrice ADD CONSTRAINT FK_Utilisatrice_idLieu FOREIGN KEY (idLieu) REFERENCES Lieu(idLieu);
ALTER TABLE Recette ADD CONSTRAINT FK_Recette_email FOREIGN KEY (email) REFERENCES Utilisatrice(email);
ALTER TABLE Zone_geographique ADD CONSTRAINT FK_Zone_geographique_idLieu FOREIGN KEY (idLieu) REFERENCES Lieu(idLieu);
ALTER TABLE Adresse ADD CONSTRAINT FK_Adresse_idLieu FOREIGN KEY (idLieu) REFERENCES Lieu(idLieu);
ALTER TABLE Transformer ADD CONSTRAINT FK_Transformer_NomIngredient FOREIGN KEY (NomIngredient) REFERENCES Ingredient(NomIngredient);
ALTER TABLE Transformer ADD CONSTRAINT FK_Transformer_NomProduit FOREIGN KEY (NomProduit) REFERENCES Produit(NomProduit);
ALTER TABLE Transformer ADD CONSTRAINT FK_Transformer_NomUnite FOREIGN KEY (NomUnite) REFERENCES Unite(NomUnite);
ALTER TABLE Composer ADD CONSTRAINT FK_Composer_NomIngredient FOREIGN KEY (NomIngredient) REFERENCES Ingredient(NomIngredient);
ALTER TABLE Composer ADD CONSTRAINT FK_Composer_titre FOREIGN KEY (titre) REFERENCES Recette(titre);
ALTER TABLE Composer ADD CONSTRAINT FK_Composer_NomUnite FOREIGN KEY (NomUnite) REFERENCES Unite(NomUnite);
ALTER TABLE Contenir ADD CONSTRAINT FK_Contenir_NomProduit FOREIGN KEY (NomProduit) REFERENCES Produit(NomProduit);
ALTER TABLE Contenir ADD CONSTRAINT FK_Contenir_titre FOREIGN KEY (titre) REFERENCES Recette(titre);
ALTER TABLE Contenir ADD CONSTRAINT FK_Contenir_NomUnite FOREIGN KEY (NomUnite) REFERENCES Unite(NomUnite);
ALTER TABLE Provenir ADD CONSTRAINT FK_Provenir_idLieu FOREIGN KEY (idLieu) REFERENCES Lieu(idLieu);
ALTER TABLE Provenir ADD CONSTRAINT FK_Provenir_idImportation FOREIGN KEY (idImportation) REFERENCES Importation(idImportation);
ALTER TABLE Provenir ADD CONSTRAINT FK_Provenir_NomIngredient FOREIGN KEY (NomIngredient) REFERENCES Ingredient(NomIngredient);
ALTER TABLE Fabriquer ADD CONSTRAINT FK_Fabriquer_NomProduit FOREIGN KEY (NomProduit) REFERENCES Produit(NomProduit);
ALTER TABLE Fabriquer ADD CONSTRAINT FK_Fabriquer_idLieu FOREIGN KEY (idLieu) REFERENCES Lieu(idLieu);
ALTER TABLE Fabriquer ADD CONSTRAINT FK_Fabriquer_idImportation FOREIGN KEY (idImportation) REFERENCES Importation(idImportation);
ALTER TABLE Elaborer ADD CONSTRAINT FK_Elaborer_titre FOREIGN KEY (titre) REFERENCES Recette(titre);
ALTER TABLE Elaborer ADD CONSTRAINT FK_Elaborer_idEtape FOREIGN KEY (idEtape) REFERENCES Etape(idEtape);
ALTER TABLE Utiliser ADD CONSTRAINT FK_Utiliser_idEtape FOREIGN KEY (idEtape) REFERENCES Etape(idEtape);
ALTER TABLE Utiliser ADD CONSTRAINT FK_Utiliser_nomUstensile FOREIGN KEY (nomUstensile) REFERENCES Ustensile(nomUstensile);
