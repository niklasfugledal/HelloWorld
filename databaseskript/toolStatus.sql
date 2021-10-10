create database if not exists MytestDB;
use MytestDB;
create table if not EXISTS toolStatus
    (
    ToolStatus_id               integer     auto_increment,
    ToolStatus_dateFrom         date,
    ToolStatus_dateTo           date,
    ToolStatus_isLent           bool        not null,
    ToolStatus_isRented         bool        not null,
    ToolStatus_isDamaged        bool,
    PRIMARY KEY (ToolStatus_id)

    );




#inserter en record av en bruker inn i databasen otra.
insert into toolStatus (ToolStatus_dateFrom,
                        ToolStatus_dateTo,
                        ToolStatus_isLent,
                        ToolStatus_isRented,
                        ToolStatus_isDamaged)
values (
        '2021-10-10',
        '2021-10-12',
        false,
        false,
        true
        );

