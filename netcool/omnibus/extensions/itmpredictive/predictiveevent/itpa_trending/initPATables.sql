create table KPATASKS (TASKNAME VARCHAR(255), ISACTIVE SMALLINT, STARTUPRUN SMALLINT, TASKDESC VARCHAR(1024), UPDATETIME VARCHAR(64), TASKINT INTEGER, PREID VARCHAR(32), ID VARCHAR(32) NOT NULL, MODTYPE VARCHAR(255), EXPRESSION VARCHAR(512));
create table KPAPROPS (TASKID VARCHAR(32) NOT NULL, PROPVALUE VARCHAR(1024), PROPNAME VARCHAR(256), OUTPUTUID VARCHAR(32));
create table KPAATTR (TASKID VARCHAR(32) NOT NULL, ORIGINNODECOL VARCHAR(32), ATTRID VARCHAR(32), AFFINITY VARCHAR(256), SCHNAME VARCHAR(16), COLNAME VARCHAR(128), ID VARCHAR(32), ATTRTYPE VARCHAR(16), ISINPUT SMALLINT, ATTRNAME VARCHAR(256), ATTRGROUPID VARCHAR(32), TABLENAME VARCHAR(128), DBNAME VARCHAR(16));
create table KPANODES (TASKID VARCHAR(32) NOT NULL, ISGROUP SMALLINT, NODEVAL VARCHAR(256));
create table KPAOUTPUTS (ID VARCHAR(32), TASKID VARCHAR(32) NOT NULL, ATTRID VARCHAR(32), UNIQUEID VARCHAR(32) NOT NULL, ATTRGROUPID VARCHAR(32), ATTRNAME VARCHAR(256), APPL VARCHAR(16), OUTPUTSETID VARCHAR(32), ATTRTYPE VARCHAR(16), AFFINITY VARCHAR(256));
create table KPACONSTRAINTS (ATTRID VARCHAR(32), CONSVAL VARCHAR(512), OP VARCHAR(16), TASKID VARCHAR(32) NOT NULL, DEF VARCHAR(1024));
create table KPAIDENTDESTS (ATTRGROUPID VARCHAR(32), IDENTTYPE SMALLINT, ATTRID VARCHAR(32), ATTRTYPE VARCHAR(16), AFFINITY VARCHAR(256), OUTPUTSETID VARCHAR(32), ATTRKEY VARCHAR(256), APPL VARCHAR(16), UNIQUEID VARCHAR(32) NOT NULL, ATTRNAME VARCHAR(256), TASKID VARCHAR(32));
create table KPAIDENTSRCS (SCHNAME VARCHAR(16), AFFINITY VARCHAR(256), ATTRID VARCHAR(32), COLNAME VARCHAR(128), TABLENAME VARCHAR(128), ORIGINNODECOL VARCHAR(32), ATTRGROUPID VARCHAR(32), TASKID VARCHAR(32), DBNAME VARCHAR(16), DESTUID VARCHAR(32), UNIQUEID VARCHAR(32) NOT NULL);
create table KPAJOINS (FROMUID VARCHAR(32), TOUID VARCHAR(32), TASKID VARCHAR(32), COND VARCHAR(1024));
create table KPAOUTPUTSETS (UNIQUEID VARCHAR(32), NAME VARCHAR(128), TASKID VARCHAR(32));
create table KPALOCK (LOCKID VARCHAR(32) NOT NULL, OWNER VARCHAR(32), LOCKTIME VARCHAR(64), ISLOCK SMALLINT);