create database if not exists MytestDB;
use MytestDB;
create table if not EXISTS tool
    (
    Tool_id             integer  auto_increment,
    Tool_toolName       nvarchar(255)   not null,
    Tool_description    nvarchar(255)   not null,
    Tool_price          int             not null,
    ToolStatus_id       int             not null,

    PRIMARY KEY (Tool_id),
    FOREIGN KEY (ToolStatus_id) REFERENCES toolStatus (ToolStatus_id)

);

insert into tool    (Tool_toolName,
                     Tool_description,
                     Tool_price,
                     ToolStatus_id)
values ('Hoppetusse',
        'Bensin',
        100,
        2);

