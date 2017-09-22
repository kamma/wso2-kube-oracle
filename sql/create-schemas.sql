drop user apimgtdb cascade;
drop user configdb cascade;
drop user govregdb cascade;
drop user userdb cascade;
drop user mbstoredb cascade;
drop user statdb cascade;
drop user analyticseventstoredb cascade;
drop user analyticprocesseddatastoredb cascade;

/************************************* apimgtdb *********************************/
create user apimgtdb identified by Passw0rd account unlock DEFAULT TABLESPACE "USERS" TEMPORARY TABLESPACE "TEMP";
grant connect to apimgtdb;
grant create session, create table, create sequence, create trigger to apimgtdb;
alter user apimgtdb quota UNLIMITED on USERS;
/************************************* configdb *********************************/
create user configdb identified by Passw0rd account unlock DEFAULT TABLESPACE "USERS" TEMPORARY TABLESPACE "TEMP";
grant connect to configdb;
grant create session, create table, create sequence, create trigger to configdb;
alter user configdb quota UNLIMITED on USERS;
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
/************************************* mbstoredb  ********/
create user mbstoredb identified by Passw0rd account unlock DEFAULT TABLESPACE "USERS" TEMPORARY TABLESPACE "TEMP";
grant connect to mbstoredb;
grant create session, create table, create sequence, create trigger to mbstoredb;
alter user mbstoredb quota UNLIMITED on USERS;
/************************************* statdb *********************************/
create user statdb identified by Passw0rd account unlock DEFAULT TABLESPACE "USERS" TEMPORARY TABLESPACE "TEMP";
grant connect to statdb;
grant create session, create table, create sequence, create trigger to statdb;
alter user statdb quota UNLIMITED on USERS;
/************************************* analyticseventstoredb *********************************/
create user analyticseventstoredb identified by Passw0rd account unlock DEFAULT TABLESPACE "USERS" TEMPORARY TABLESPACE "TEMP";
grant connect to analyticseventstoredb;
grant create session, create table, create sequence, create trigger to analyticseventstoredb;
alter user analyticseventstoredb quota UNLIMITED on USERS;
/************************************* statdb *********************************/
create user analyticprocesseddatastoredb identified by Passw0rd account unlock DEFAULT TABLESPACE "USERS" TEMPORARY TABLESPACE "TEMP";
grant connect to analyticprocesseddatastoredb;
grant create session, create table, create sequence, create trigger to analyticprocesseddatastoredb;
alter user analyticprocesseddatastoredb quota UNLIMITED on USERS;
