drop user apimgtdb cascade;
drop user govregdb cascade;
drop user userdb cascade;
drop user statdb cascade;
drop user keymandb cascade;

/************************************* apimgtdb *********************************/
create user apimgtdb identified by Passw0rd account unlock DEFAULT TABLESPACE "USERS" TEMPORARY TABLESPACE "TEMP";
grant connect to apimgtdb;
grant create session, create table, create sequence, create trigger to apimgtdb;
alter user apimgtdb quota UNLIMITED on USERS;
/************************************* govregdb *********************************/
create user govregdb identified by Passw0rd account unlock DEFAULT TABLESPACE "USERS" TEMPORARY TABLESPACE "TEMP";
grant connect to govregdb;
grant create session, create table, create sequence, create trigger to govregdb;
alter user govregdb quota UNLIMITED on USERS;
/************************************* userdb *********************************/
create user userdb identified by Passw0rd account unlock DEFAULT TABLESPACE "USERS" TEMPORARY TABLESPACE "TEMP";
grant connect to userdb;
grant create session, create table, create sequence, create trigger to userdb;
alter user userdb quota UNLIMITED on USERS;
/************************************* statdb *********************************/
create user statdb identified by Passw0rd account unlock DEFAULT TABLESPACE "USERS" TEMPORARY TABLESPACE "TEMP";
grant connect to statdb;
grant create session, create table, create sequence, create trigger to statdb;
alter user statdb quota UNLIMITED on USERS;
/************************************* keymandb *********************************/
create user keymandb identified by Passw0rd account unlock DEFAULT TABLESPACE "USERS" TEMPORARY TABLESPACE "TEMP";
grant connect to keymandb;
grant create session, create table, create sequence, create trigger to keymandb;
alter user keymandb quota UNLIMITED on USERS;