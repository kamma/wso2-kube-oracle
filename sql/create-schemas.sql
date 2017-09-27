drop user wso2am cascade;
drop user wso2reg cascade;
drop user wso2um cascade;
drop user wso2stats cascade;
drop user wso2is1 cascade;
drop user wso2is2 cascade;
drop user wso2ama1 cascade;
drop user wso2ama2 cascade;
drop user wso2pubstore1 cascade;
drop user wso2pubstore2 cascade;

/************************************* wso2am *********************************/
create user wso2am identified by Passw0rd account unlock DEFAULT TABLESPACE "USERS" TEMPORARY TABLESPACE "TEMP";
grant connect to wso2am;
grant create session, create table, create sequence, create trigger to wso2am;
alter user wso2am quota UNLIMITED on USERS;
/************************************* wso2reg *********************************/
create user wso2reg identified by Passw0rd account unlock DEFAULT TABLESPACE "USERS" TEMPORARY TABLESPACE "TEMP";
grant connect to wso2reg;
grant create session, create table, create sequence, create trigger to wso2reg;
alter user wso2reg quota UNLIMITED on USERS;
/************************************* wso2um *********************************/
create user wso2um identified by Passw0rd account unlock DEFAULT TABLESPACE "USERS" TEMPORARY TABLESPACE "TEMP";
grant connect to wso2um;
grant create session, create table, create sequence, create trigger to wso2um;
alter user wso2um quota UNLIMITED on USERS;
/************************************* wso2stats *********************************/
create user wso2stats identified by Passw0rd account unlock DEFAULT TABLESPACE "USERS" TEMPORARY TABLESPACE "TEMP";
grant connect to wso2stats;
grant create session, create table, create sequence, create trigger to wso2stats;
alter user wso2stats quota UNLIMITED on USERS;
/************************************* wso2is1 *********************************/
create user wso2is1 identified by Passw0rd account unlock DEFAULT TABLESPACE "USERS" TEMPORARY TABLESPACE "TEMP";
grant connect to wso2is1;
grant create session, create table, create sequence, create trigger to wso2is1;
alter user wso2is1 quota UNLIMITED on USERS;
/************************************* wso2is2 *********************************/
create user wso2is2 identified by Passw0rd account unlock DEFAULT TABLESPACE "USERS" TEMPORARY TABLESPACE "TEMP";
grant connect to wso2is2;
grant create session, create table, create sequence, create trigger to wso2is2;
alter user wso2is2 quota UNLIMITED on USERS;
/************************************* wso2pubstore1 *********************************/
create user wso2pubstore1 identified by Passw0rd account unlock DEFAULT TABLESPACE "USERS" TEMPORARY TABLESPACE "TEMP";
grant connect to wso2pubstore1;
grant create session, create table, create sequence, create trigger to wso2pubstore1;
alter user wso2pubstore1 quota UNLIMITED on USERS;
/************************************* wso2pubstore2 *********************************/
create user wso2pubstore2 identified by Passw0rd account unlock DEFAULT TABLESPACE "USERS" TEMPORARY TABLESPACE "TEMP";
grant connect to wso2pubstore2;
grant create session, create table, create sequence, create trigger to wso2pubstore2;
alter user wso2pubstore2 quota UNLIMITED on USERS;
/************************************* wso2ama1 *********************************/
create user wso2ama1 identified by Passw0rd account unlock DEFAULT TABLESPACE "USERS" TEMPORARY TABLESPACE "TEMP";
grant connect to wso2ama1;
grant create session, create table, create sequence, create trigger to wso2ama1;
alter user wso2ama1 quota UNLIMITED on USERS;
/************************************* wso2ama2 *********************************/
create user wso2ama2 identified by Passw0rd account unlock DEFAULT TABLESPACE "USERS" TEMPORARY TABLESPACE "TEMP";
grant connect to wso2ama2;
grant create session, create table, create sequence, create trigger to wso2ama2;
alter user wso2ama2 quota UNLIMITED on USERS;
