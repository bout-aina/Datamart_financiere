create table DEPARTEMENT (
	Departement_PK int IDENTITY(1,1) PRIMARY KEY,
	id_Departement varchar(255) NOT NULL ,
	nom varchar(255) NOT NULL 

);

create table TEMPS(
        Temps_PK int IDENTITY(1,1) PRIMARY KEY ,
        Date_Temps date NOT NULL ,
        Annee VARCHAR (255) NOT NULL ,
        Mois VARCHAR (255) NOT NULL ,
        Jour VARCHAR (255) NOT NULL ,

);

create table GEOGRAPHIE(
	Geographie_PK int IDENTITY(1,1) PRIMARY KEY,
	Id_Geographie varchar(255) NOT NULL ,
	ville varchar(255) NOT NULL ,
	Code_postal int NOT NULL 
);

create table LOGICIEL(
	Logiciel_PK int IDENTITY(1,1) PRIMARY KEY,
	Departement_FK int NOT NULL ,
	idLogiciel varchar(255) NOT NULL ,
	Nom VARCHAR(255) NOT NULL ,
	Refe VARCHAR(255) NOT NULL ,
	Descr VARCHAR(255) NOT NULL ,
	Vrsion VARCHAR(255) NOT NULL ,
	Prix_Achat VARCHAR(255) NOT NULL ,
	Prix_Vente VARCHAR(255) NOT NULL ,
	FOREIGN KEY (Departement_FK) REFERENCES DEPARTEMENT(Departement_PK)
);


create table F_VENTELOGICIEL (

DATE_VENTE_FK  int NOT NULL ,
CLIENT_FK int NOT NULL ,
LOGICIEL_FK int NOT NULL ,
CA_VENTELOGICIEL   int    NOT NULL ,
MARGE_VENTELOGICIEL int  NOT NULL ,
QUANTITE int NOT NULL ,
FOREIGN KEY (DATE_VENTE_FK ) REFERENCES TEMPS(Temps_PK),
FOREIGN KEY (CLIENT_FK) REFERENCES CLIENT(Client_PK),
FOREIGN KEY (LOGICIEL_FK) REFERENCES LOGICIEL(Logiciel_PK)


);

create table CLIENT (
Client_PK int IDENTITY(1,1) PRIMARY KEY,
Geographie_FK int NOT NULL ,
IdClient VARCHAR(255) NOT NULL,
Nom	VARCHAR(255)  NOT NULL,
Email	VARCHAR(255)  NOT NULL,
NumGsm	VARCHAR(255)  NOT NULL,
Fax	VARCHAR(255)   NOT NULL,
NumTelFix	VARCHAR(255)  NOT NULL,
LibelleActivite	VARCHAR(255)   NOT NULL,

FOREIGN KEY (Geographie_FK) REFERENCES GEOGRAPHIE(Geographie_PK),

);

create table FOURNISSEUR (
	Fournisseur_PK int IDENTITY(1,1) PRIMARY KEY,
	Geographie_FK int  NOT NULL,
	IdFournisseur varchar(255) NOT NULL,
	Nom varchar(255) NOT NULL,
	Email varchar(255) NOT NULL,
	NumGsm varchar(255) NOT NULL,
	Fax varchar(255) NOT NULL,
	NumTelFix varchar(255) NOT NULL,
	FOREIGN KEY (Geographie_FK) REFERENCES GEOGRAPHIE(Geographie_PK)


);

create table F_ACAHTLOGICIEL(
	Date_Achat_FK int NOT NULL,
	Fournisseur_FK int NOT NULL,
	Logiciel_FK int NOT NULL,
	CA int NOT NULL,
	Quantite int NOT NULL,
	FOREIGN KEY (Date_Achat_FK ) REFERENCES TEMPS(Temps_PK),
    FOREIGN KEY (Fournisseur_FK) REFERENCES FOURNISSEUR(Fournisseur_PK),
    FOREIGN KEY (LOGICIEL_FK) REFERENCES LOGICIEL(Logiciel_PK)

	

);

insert into TEMPS values('2015-12-23','2015','12','23');
insert into TEMPS values('2016-12-23','2016','12','23');
insert into TEMPS values('2017-12-23','2017','12','23');
insert into TEMPS values('2018-12-23','2018','12','23');
insert into TEMPS values('2019-12-23','2019','12','23');
insert into TEMPS values('2020-12-23','2020','12','23');
insert into TEMPS values('2021-12-23','2021','12','23');
insert into TEMPS values('2022-12-23','2022','12','23');

