create database if not exists MytestDB;
use MytestDB;
create table if not EXISTS orderTable(

    OrderTable_id                       integer  auto_increment,
    OrderTable_description              nvarchar(255)   not null,
    OrderTable_date                     date            not null,
    User_id                             int             not null,
    Tool_id                             int             not null,

    PRIMARY KEY (OrderTable_id),
    FOREIGN KEY (User_id) REFERENCES user (User_id),
    FOREIGN KEY (Tool_id) REFERENCES tool (Tool_id)

    );

insert into orderTable (
                    OrderTable_description,
                    OrderTable_date,
                    User_id,
                    Tool_id)

values (
           'Odre ',
           '2021-12-29',
           1,
           4);