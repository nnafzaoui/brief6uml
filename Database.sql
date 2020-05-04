create database animals;
use animals;

/*     */

CREATE USER 'nourdine1'@'localhost' IDENTIFIED BY 'pass1';
GRANT all privileges on * . * TO 'nourdine1'@'localhost';

CREATE USER 'U2'@'localhost' IDENTIFIED BY 'pass2';
GRANT INSERT, DELETE ON animals.* TO 'U2'@'localhost';

/**/

insert into Animal values(2, 3, 'male');
insert into Animal values(3, 6, 'female');
insert into Animal values(4, 9, 'female');

/**/

insert into Duck values(2, 'Yellow');
insert into Fish values(3, 20, true);
insert into Zebra values(4, true);

/**/

update Animal 
set age = 33
where id = 1;

update Duck
set beakColor = 'red'
where id = 2;

update Fish
set sizeInCm = 100
where id = 3;

update Zebra
set is_wild = false
where id = 4;


/*  */

Delete from Zebra where id = 4;
delete from Fish where id = 3;
delete from Duck where id = 2;
delete from Animal where id = 1;

/*  */

select * from Animal;
select * from Duck;
select * from Fish;
select * from Zebra;


/*==============================================================*/
/* Table : Animal                                               */
/*==============================================================*/
create table Animal
(
   id                   int not null,
   age                  int,
   gender               varchar(254),
   primary key (id)
);

/*==============================================================*/
/* Table : Duck                                                 */
/*==============================================================*/
create table Duck
(
   id                   int not null,
   beakColor            varchar(254),
   primary key (id)
);

/*==============================================================*/
/* Table : Fish                                                 */
/*==============================================================*/
create table Fish
(
   id                   int not null,
   sizeInCm             int,
   canEat               bool,
   primary key (id)
);

/*==============================================================*/
/* Table : Zebra                                                */
/*==============================================================*/
create table Zebra
(
   id                   int not null,
   is_wild              bool,
   primary key (id)
);

alter table Duck add constraint FK_Generalisation_1 foreign key (id)
      references Animal (id) on delete restrict on update restrict;

alter table Fish add constraint FK_Generalisation_2 foreign key (id)
      references Animal (id) on delete restrict on update restrict;

alter table Zebra add constraint FK_Generalisation_3 foreign key (id)
      references Animal (id) on delete restrict on update restrict;
