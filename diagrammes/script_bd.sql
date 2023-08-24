/*==============================================================*/
/* Nom de SGBD :  MySQL 5.0                                     */
/* Date de création :  18/08/2023 12:08:18                      */
/*==============================================================*/


drop table if exists etudiant;

drop table if exists utilisateur;

/*==============================================================*/
/* Table : etudiant                                             */
/*==============================================================*/
create table etudiant
(
   id_etudiant          int not null,
   id_utilisateur       int not null,
   nom                  varchar(254),
   prenom               varchar(254),
   date_de_naissance    datetime,
   nationalite          varchar(254),
   filiere_inscrite     varchar(254),
   niveau_etude         varchar(254),
   primary key (id_etudiant)
);

/*==============================================================*/
/* Table : utilisateur                                          */
/*==============================================================*/
create table utilisateur
(
   id_utilisateur       int not null,
   nom                  varchar(254),
   prenom               varchar(254),
   email                varchar(254),
   mot_de_passe         varchar(254),
   telephone            int,
   primary key (id_utilisateur)
);

alter table etudiant add constraint FK_Association_1 foreign key (id_utilisateur)
      references utilisateur (id_utilisateur) on delete restrict on update restrict;

