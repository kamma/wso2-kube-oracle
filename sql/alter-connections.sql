alter system set processes = 1000 scope = spfile;
alter system set sessions = 1000 scope = spfile;
alter system set transactions = 1000 scope = spfile;
alter system set open_cursors = 1000 scope = spfile;