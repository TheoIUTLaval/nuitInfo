create database cookieClicker;
use cookieClicker;

create table Users (

    id int primary key auto_increment,
    username varchar(255) not null,
    password varchar(255) not null;

);

create table Scoring (

    id int primary key auto_increment,
    score int not null,
    id_user int not null constraint fk_id_user foreign key (id_user) references users(id),
    timeMAJ timestamp not null default current_timestamp on update current_timestamp;

);

create table Automate(

    id int primary key auto_increment,
    prix int not null,
    mutliplicateurPrix int not null,
    nom varchar(255) not null,
    description text not null,
    image varchar(255) not null,
    scoreGiver int not null,
    mutliplicateurScore int not null;

);

create table AutomateUsers(

    id_user int not null,
    id_automate int not null,
    primary key (id_user, id_automate),
    constraint fk_id_user foreign key (id_user) references users(id),
    constraint fk_id_automate foreign key (id_automate) references automate(id),
    timeMAJ timestamp not null default current_timestamp on update current_timestamp;

)
create table Upgrades(
    
    id int primary key auto_increment,
    prix int not null,
    scoreMultplier int not null,
    nom varchar(255) not null,
    image varchar(255) not null;

);

create table UpgradesUsers(

    id_upgrade int not null,
    id_user int not null,
    primary key (id_upgrade, id_user),
    constraint fk_id_upgrade foreign key (id_upgrade) references upgrades(id),
    constraint fk_id_user foreign key (id_user) references users(id),
    timeMAJ timestamp not null default current_timestamp on update current_timestamp;
);




