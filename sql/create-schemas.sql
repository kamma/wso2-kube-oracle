/************************************* apimgtdb *********************************/
drop user apimgtdb cascade;
create user apimgtdb identified by Passw0rd account unlock DEFAULT TABLESPACE "USERS" TEMPORARY TABLESPACE "TEMP";
grant connect to apimgtdb;
grant create session, create table, create sequence, create trigger to apimgtdb;
alter user apimgtdb quota UNLIMITED on USERS;
/************************************* configdb *********************************/
drop user configdb cascade;
create user configdb identified by Passw0rd account unlock DEFAULT TABLESPACE "USERS" TEMPORARY TABLESPACE "TEMP";
grant connect to configdb;
grant create session, create table, create sequence, create trigger to configdb;
alter user configdb quota UNLIMITED on USERS;
/************************************* govregdb *********************************/
drop user govregdb cascade;
create user govregdb identified by Passw0rd account unlock DEFAULT TABLESPACE "USERS" TEMPORARY TABLESPACE "TEMP";
grant connect to govregdb;
grant create session, create table, create sequence, create trigger to govregdb;
alter user govregdb quota UNLIMITED on USERS;
/************************************* userdb *********************************/
drop user userdb cascade;
create user userdb identified by Passw0rd account unlock DEFAULT TABLESPACE "USERS" TEMPORARY TABLESPACE "TEMP";
grant connect to userdb;
grant create session, create table, create sequence, create trigger to userdb;
alter user userdb quota UNLIMITED on USERS;
/************************************* mbstoredb  ********/
drop user mbstoredb cascade;
create user mbstoredb identified by Passw0rd account unlock DEFAULT TABLESPACE "USERS" TEMPORARY TABLESPACE "TEMP";
grant connect to mbstoredb;
grant create session, create table, create sequence, create trigger to mbstoredb;
alter user mbstoredb quota UNLIMITED on USERS;
/************************************* statdb *********************************/
drop user statdb cascade;
create user statdb identified by Passw0rd account unlock DEFAULT TABLESPACE "USERS" TEMPORARY TABLESPACE "TEMP";
grant connect to statdb;
grant create session, create table, create sequence, create trigger to statdb;
alter user statdb quota UNLIMITED on USERS;
/************************************* analyticseventstoredb *********************************/
drop user analyticseventstoredb cascade;
create user analyticseventstoredb identified by Passw0rd account unlock DEFAULT TABLESPACE "USERS" TEMPORARY TABLESPACE "TEMP";
grant connect to analyticseventstoredb;
grant create session, create table, create sequence, create trigger to analyticseventstoredb;
alter user analyticseventstoredb quota UNLIMITED on USERS;
/************************************* statdb *********************************/
drop user analyticprocesseddatastoredb cascade;
create user analyticprocesseddatastoredb identified by Passw0rd account unlock DEFAULT TABLESPACE "USERS" TEMPORARY TABLESPACE "TEMP";
grant connect to analyticprocesseddatastoredb;
grant create session, create table, create sequence, create trigger to analyticprocesseddatastoredb;
alter user analyticprocesseddatastoredb quota UNLIMITED on USERS;
