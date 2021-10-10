create database if not exists MytestDB;
use MytestDB;
create table if not EXISTS user (
    User_id             integer  auto_increment,
    User_firstName      nvarchar(255),
    User_lastName       nvarchar(255),
    User_phoneNumber    nvarchar(255),
    User_password       nvarchar(255),
    User_dob            nvarchar(255),
    CONSTRAINT U_User_ID_PK PRIMARY KEY (User_id)
);



#inserter en record av en bruker inn i databasen otra.
insert into user        (User_firstName,
                        User_lastName,
                        User_phoneNumber,
                        User_password,
                        User_dob)
values (
        'Jørgen',
        'Espeland',
        '99999999',
        '5555',
        '25-02-1996');

