-- creating a new database
-- create database B24DB

-- to rename database name
-- execute sp_renamedb B24DB, B24NewDB 

-- deleting database
-- drop database B24NewDB

create database B24DB

drop database B24DB

create database B24DB

-- 1. formatting server
-- 2. to migrate database on another machine

-- 1. full backup
backup database B24DB
to disk = 'E:\temp\Batch24\B24DB.bak'

-- 2. differential backup
backup database B24DB
to disk = 'E:\temp\Batch24\B24DB.bak'
with differential

-- 3. log backup
--backup log B24DB
--to disk = 'E:\temp\Batch24\B24DB_Log.bak'

drop database B24DB

restore database B24DB
from disk = 'E:\temp\Batch24\B24DB.bak'