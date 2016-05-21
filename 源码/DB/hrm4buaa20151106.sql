prompt PL/SQL Developer import file
prompt Created on 2015年11月6日 by young
set feedback off
set define off
prompt Dropping T_ARCHIVE...
drop table T_ARCHIVE cascade constraints;
prompt Dropping T_ARCHIVESCLASS...
drop table T_ARCHIVESCLASS cascade constraints;
prompt Dropping T_CERTIFICATE...
drop table T_CERTIFICATE cascade constraints;
prompt Dropping T_CHANGE...
drop table T_CHANGE cascade constraints;
prompt Dropping T_CONTRACT...
drop table T_CONTRACT cascade constraints;
prompt Dropping T_DEPT...
drop table T_DEPT cascade constraints;
prompt Dropping T_EMPLOYEE...
drop table T_EMPLOYEE cascade constraints;
prompt Dropping T_TRAIN...
drop table T_TRAIN cascade constraints;
prompt Dropping T_EMPLOYEE_TRAIN...
drop table T_EMPLOYEE_TRAIN cascade constraints;
prompt Dropping T_FORMEREMP...
drop table T_FORMEREMP cascade constraints;
prompt Dropping T_RECORD...
drop table T_RECORD cascade constraints;
prompt Dropping T_RESUME...
drop table T_RESUME cascade constraints;
prompt Dropping T_REWARD...
drop table T_REWARD cascade constraints;
prompt Dropping T_ROLE...
drop table T_ROLE cascade constraints;
prompt Dropping T_TRAINSCORE...
drop table T_TRAINSCORE cascade constraints;
prompt Dropping T_TRANSFERRECORD...
drop table T_TRANSFERRECORD cascade constraints;
prompt Dropping T_USER...
drop table T_USER cascade constraints;
prompt Creating T_ARCHIVE...
create table T_ARCHIVE
(
  arcid          NUMBER not null,
  empid          NUMBER,
  arcnum         VARCHAR2(20),
  arcname        VARCHAR2(30),
  summary        VARCHAR2(50),
  remark         VARCHAR2(30),
  archiveclassid NUMBER
)
tablespace HRM4BUAA
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table T_ARCHIVE
  is '档案';
comment on column T_ARCHIVE.arcid
  is '档案id';
comment on column T_ARCHIVE.empid
  is '员工id';
comment on column T_ARCHIVE.arcnum
  is '档案编号';
comment on column T_ARCHIVE.arcname
  is '名称';
comment on column T_ARCHIVE.summary
  is '摘要';
comment on column T_ARCHIVE.remark
  is '备注';
comment on column T_ARCHIVE.archiveclassid
  is '类别id';
alter table T_ARCHIVE
  add constraint PK_T_ARCHIVE primary key (ARCID)
  using index 
  tablespace HRM4BUAA
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Creating T_ARCHIVESCLASS...
create table T_ARCHIVESCLASS
(
  archiveclassid  NUMBER not null,
  achiveclassname VARCHAR2(20)
)
tablespace HRM4BUAA
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table T_ARCHIVESCLASS
  is '档案分类';
comment on column T_ARCHIVESCLASS.archiveclassid
  is '分类id';
comment on column T_ARCHIVESCLASS.achiveclassname
  is '分类名称';
alter table T_ARCHIVESCLASS
  add constraint PK_T_ARCHIVESCLASS primary key (ARCHIVECLASSID)
  using index 
  tablespace HRM4BUAA
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Creating T_CERTIFICATE...
create table T_CERTIFICATE
(
  certid     NUMBER not null,
  trainid    NUMBER,
  certname   VARCHAR2(20),
  certnumber VARCHAR2(20),
  certdate   DATE
)
tablespace HRM4BUAA
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table T_CERTIFICATE
  is '证书';
comment on column T_CERTIFICATE.certid
  is 'certid';
comment on column T_CERTIFICATE.trainid
  is 'trainid';
comment on column T_CERTIFICATE.certname
  is 'certname';
comment on column T_CERTIFICATE.certnumber
  is 'certnumber';
comment on column T_CERTIFICATE.certdate
  is 'certdate';
alter table T_CERTIFICATE
  add constraint PK_T_CERTIFICATE primary key (CERTID)
  using index 
  tablespace HRM4BUAA
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Creating T_CHANGE...
create table T_CHANGE
(
  changeid NUMBER not null,
  column_2 CHAR(10),
  column_3 CHAR(10),
  column_4 CHAR(10),
  column_5 CHAR(10)
)
tablespace HRM4BUAA
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table T_CHANGE
  is '人事调动';
comment on column T_CHANGE.changeid
  is 'change';
comment on column T_CHANGE.column_2
  is 'Column_2';
comment on column T_CHANGE.column_3
  is 'Column_3';
comment on column T_CHANGE.column_4
  is 'Column_4';
comment on column T_CHANGE.column_5
  is 'Column_5';
alter table T_CHANGE
  add constraint PK_T_CHANGE primary key (CHANGEID)
  using index 
  tablespace HRM4BUAA
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Creating T_CONTRACT...
create table T_CONTRACT
(
  cosid     NUMBER not null,
  empid     NUMBER,
  cosnum    VARCHAR2(20),
  startdate DATE,
  enddate   DATE,
  job       VARCHAR2(30),
  content   CHAR(10)
)
tablespace HRM4BUAA
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table T_CONTRACT
  is '合同';
comment on column T_CONTRACT.cosid
  is 'cosid';
comment on column T_CONTRACT.empid
  is 'empid';
comment on column T_CONTRACT.cosnum
  is 'cosnum';
comment on column T_CONTRACT.startdate
  is 'startdate';
comment on column T_CONTRACT.enddate
  is 'enddate';
comment on column T_CONTRACT.job
  is 'job';
comment on column T_CONTRACT.content
  is 'content';
alter table T_CONTRACT
  add constraint PK_T_CONTRACT primary key (COSID)
  using index 
  tablespace HRM4BUAA
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Creating T_DEPT...
create table T_DEPT
(
  deptid           NUMBER not null,
  deptname         VARCHAR2(20),
  deptlevel        NUMBER,
  "SuperiorDeptId" NUMBER
)
tablespace HRM4BUAA
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table T_DEPT
  is '部门';
comment on column T_DEPT.deptid
  is 'deptid';
comment on column T_DEPT.deptname
  is '部门名称';
comment on column T_DEPT.deptlevel
  is '级别';
comment on column T_DEPT."SuperiorDeptId"
  is '上级部门';

prompt Creating T_EMPLOYEE...
create table T_EMPLOYEE
(
  empid    NUMBER not null,
  empname  CHAR(10),
  empsex   NUMBER,
  school   VARCHAR2(10),
  degree   VARCHAR2(10),
  deptid   NUMBER,
  job      VARCHAR2(20),
  ranks    VARCHAR2(20),
  state    NUMBER,
  age      NUMBER,
  birthday DATE
)
tablespace HRM4BUAA
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table T_EMPLOYEE
  is '员工';
comment on column T_EMPLOYEE.empid
  is '员工id';
comment on column T_EMPLOYEE.empname
  is '姓名';
comment on column T_EMPLOYEE.empsex
  is '性别';
comment on column T_EMPLOYEE.school
  is '学历';
comment on column T_EMPLOYEE.degree
  is '学位';
comment on column T_EMPLOYEE.deptid
  is '部门id';
comment on column T_EMPLOYEE.job
  is '职务';
comment on column T_EMPLOYEE.ranks
  is '职称';
comment on column T_EMPLOYEE.state
  is '状态';
comment on column T_EMPLOYEE.age
  is '年龄';
comment on column T_EMPLOYEE.birthday
  is '生日';
alter table T_EMPLOYEE
  add constraint PK_T_EMPLOYEE primary key (EMPID)
  using index 
  tablespace HRM4BUAA
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Creating T_TRAIN...
create table T_TRAIN
(
  trainid        NUMBER not null,
  trainidclassid NUMBER,
  trainkind      VARCHAR2(20),
  trainnumber    VARCHAR2(20),
  trainname      VARCHAR2(30),
  startdate      DATE,
  enddate        DATE,
  traincost      VARCHAR2(20),
  trainplace     VARCHAR2(30)
)
tablespace HRM4BUAA
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table T_TRAIN
  is '培训';
comment on column T_TRAIN.trainid
  is 'trainid';
comment on column T_TRAIN.trainidclassid
  is '培训类别';
comment on column T_TRAIN.trainkind
  is '性质';
comment on column T_TRAIN.trainnumber
  is '培训编号';
comment on column T_TRAIN.trainname
  is '培训名称';
comment on column T_TRAIN.startdate
  is '开始时间';
comment on column T_TRAIN.enddate
  is '结束时间';
comment on column T_TRAIN.traincost
  is '费用';
comment on column T_TRAIN.trainplace
  is '地点';
alter table T_TRAIN
  add constraint PK_T_TRAIN primary key (TRAINID)
  using index 
  tablespace HRM4BUAA
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Creating T_EMPLOYEE_TRAIN...
create table T_EMPLOYEE_TRAIN
(
  employ_train_id NUMBER not null,
  empid           NUMBER,
  trainid         NUMBER,
  score           NUMBER
)
tablespace HRM4BUAA
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table T_EMPLOYEE_TRAIN
  is 'employee_train';
comment on column T_EMPLOYEE_TRAIN.employ_train_id
  is 'id';
comment on column T_EMPLOYEE_TRAIN.empid
  is '员工id';
comment on column T_EMPLOYEE_TRAIN.trainid
  is '培训id';
comment on column T_EMPLOYEE_TRAIN.score
  is '培训成绩';
alter table T_EMPLOYEE_TRAIN
  add constraint PK_T_EMPLOYEE_TRAIN primary key (EMPLOY_TRAIN_ID)
  using index 
  tablespace HRM4BUAA
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table T_EMPLOYEE_TRAIN
  add constraint FK_T_EMPLOY_REFERENCE_T_EMPLOY foreign key (EMPID)
  references T_EMPLOYEE (EMPID);
alter table T_EMPLOYEE_TRAIN
  add constraint FK_T_EMPLOY_REFERENCE_T_TRAIN foreign key (TRAINID)
  references T_TRAIN (TRAINID);

prompt Creating T_FORMEREMP...
create table T_FORMEREMP
(
  recordid      NUMBER not null,
  empname       VARCHAR2(10),
  empsex        VARCHAR2(5),
  ranks         VARCHAR2(20),
  departuretime DATE,
  depid         NUMBER,
  reason        VARCHAR2(60)
)
tablespace BUAA
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table T_FORMEREMP
  add constraint P_RECORDID primary key (RECORDID)
  using index 
  tablespace BUAA
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Creating T_RECORD...
create table T_RECORD
(
  recordid NUMBER not null,
  column_2 CHAR(10),
  column_3 CHAR(10),
  column_4 CHAR(10),
  column_5 CHAR(10)
)
tablespace HRM4BUAA
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table T_RECORD
  is '履历';
comment on column T_RECORD.recordid
  is 'recordid';
comment on column T_RECORD.column_2
  is 'Column_2';
comment on column T_RECORD.column_3
  is 'Column_3';
comment on column T_RECORD.column_4
  is 'Column_4';
comment on column T_RECORD.column_5
  is 'Column_5';
alter table T_RECORD
  add constraint PK_T_RECORD primary key (RECORDID)
  using index 
  tablespace HRM4BUAA
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Creating T_RESUME...
create table T_RESUME
(
  id         NUMBER not null,
  dmpname    VARCHAR2(20),
  deptid     NUMBER,
  job        VARCHAR2(20),
  school     VARCHAR2(20),
  jobcontent VARCHAR2(20),
  trainsore  NUMBER,
  startdate  DATE,
  enddate    DATE
)
tablespace HRM4BUAA
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table T_RESUME
  add primary key (ID)
  using index 
  tablespace HRM4BUAA
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Creating T_REWARD...
create table T_REWARD
(
  rewid      NUMBER not null,
  empid      NUMBER,
  empname    VARCHAR2(20),
  rewtype    NUMBER not null,
  rewdate    DATE,
  rewtitle   VARCHAR2(30),
  rewcontent VARCHAR2(100),
  rewlevel   NUMBER
)
tablespace HRM4BUAA
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table T_REWARD
  is '奖惩表';
comment on column T_REWARD.rewid
  is 'rewardid';
comment on column T_REWARD.empid
  is '员工id';
comment on column T_REWARD.empname
  is '员工姓名';
comment on column T_REWARD.rewtype
  is '类型';
comment on column T_REWARD.rewdate
  is '获奖时间';
comment on column T_REWARD.rewtitle
  is '奖惩标题';
comment on column T_REWARD.rewcontent
  is '奖惩内容';
comment on column T_REWARD.rewlevel
  is '奖金类别';
alter table T_REWARD
  add constraint PK_T_REWARD primary key (REWID)
  using index 
  tablespace HRM4BUAA
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Creating T_ROLE...
create table T_ROLE
(
  roleid   NUMBER not null,
  rolename VARCHAR2(20)
)
tablespace HRM4BUAA
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table T_ROLE
  is '角色';
comment on column T_ROLE.roleid
  is 'roleid';
comment on column T_ROLE.rolename
  is 'rolename';
alter table T_ROLE
  add constraint PK_T_ROLE primary key (ROLEID)
  using index 
  tablespace HRM4BUAA
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Creating T_TRAINSCORE...
create table T_TRAINSCORE
(
  trainscoreid NUMBER not null,
  trainid      NUMBER,
  empid        NUMBER,
  score        NUMBER,
  column_5     CHAR(10),
  column_6     CHAR(10),
  column_7     CHAR(10)
)
tablespace HRM4BUAA
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table T_TRAINSCORE
  is '培训成绩';
comment on column T_TRAINSCORE.trainscoreid
  is 'trainscoreid';
comment on column T_TRAINSCORE.trainid
  is 'trainid';
comment on column T_TRAINSCORE.empid
  is 'empid';
comment on column T_TRAINSCORE.score
  is 'score';
comment on column T_TRAINSCORE.column_5
  is 'Column_5';
comment on column T_TRAINSCORE.column_6
  is 'Column_6';
comment on column T_TRAINSCORE.column_7
  is 'Column_7';
alter table T_TRAINSCORE
  add constraint PK_T_TRAINSCORE primary key (TRAINSCOREID)
  using index 
  tablespace HRM4BUAA
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Creating T_TRANSFERRECORD...
create table T_TRANSFERRECORD
(
  recordid    NUMBER not null,
  empid       NUMBER,
  empname     VARCHAR2(20),
  empsex      VARCHAR2(5),
  trftime     DATE,
  formerdepid NUMBER,
  depid       NUMBER
)
tablespace BUAA
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table T_TRANSFERRECORD
  add constraint P_RECORDID1 primary key (RECORDID)
  using index 
  tablespace BUAA
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Creating T_USER...
create table T_USER
(
  userid   NUMBER not null,
  username VARCHAR2(15),
  password VARCHAR2(15),
  roleid   NUMBER
)
tablespace HRM4BUAA
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table T_USER
  is '用户';
comment on column T_USER.userid
  is 'id';
comment on column T_USER.username
  is 'username';
comment on column T_USER.password
  is 'password';
comment on column T_USER.roleid
  is 'roleid';
alter table T_USER
  add constraint PK_T_USER primary key (USERID)
  using index 
  tablespace HRM4BUAA
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table T_USER
  add constraint FK_T_USER_REFERENCE_T_ROLE foreign key (ROLEID)
  references T_ROLE (ROLEID);

prompt Disabling triggers for T_ARCHIVE...
alter table T_ARCHIVE disable all triggers;
prompt Disabling triggers for T_ARCHIVESCLASS...
alter table T_ARCHIVESCLASS disable all triggers;
prompt Disabling triggers for T_CERTIFICATE...
alter table T_CERTIFICATE disable all triggers;
prompt Disabling triggers for T_CHANGE...
alter table T_CHANGE disable all triggers;
prompt Disabling triggers for T_CONTRACT...
alter table T_CONTRACT disable all triggers;
prompt Disabling triggers for T_DEPT...
alter table T_DEPT disable all triggers;
prompt Disabling triggers for T_EMPLOYEE...
alter table T_EMPLOYEE disable all triggers;
prompt Disabling triggers for T_TRAIN...
alter table T_TRAIN disable all triggers;
prompt Disabling triggers for T_EMPLOYEE_TRAIN...
alter table T_EMPLOYEE_TRAIN disable all triggers;
prompt Disabling triggers for T_FORMEREMP...
alter table T_FORMEREMP disable all triggers;
prompt Disabling triggers for T_RECORD...
alter table T_RECORD disable all triggers;
prompt Disabling triggers for T_RESUME...
alter table T_RESUME disable all triggers;
prompt Disabling triggers for T_REWARD...
alter table T_REWARD disable all triggers;
prompt Disabling triggers for T_ROLE...
alter table T_ROLE disable all triggers;
prompt Disabling triggers for T_TRAINSCORE...
alter table T_TRAINSCORE disable all triggers;
prompt Disabling triggers for T_TRANSFERRECORD...
alter table T_TRANSFERRECORD disable all triggers;
prompt Disabling triggers for T_USER...
alter table T_USER disable all triggers;
prompt Disabling foreign key constraints for T_EMPLOYEE_TRAIN...
alter table T_EMPLOYEE_TRAIN disable constraint FK_T_EMPLOY_REFERENCE_T_EMPLOY;
alter table T_EMPLOYEE_TRAIN disable constraint FK_T_EMPLOY_REFERENCE_T_TRAIN;
prompt Disabling foreign key constraints for T_USER...
alter table T_USER disable constraint FK_T_USER_REFERENCE_T_ROLE;
prompt Loading T_ARCHIVE...
prompt Table is empty
prompt Loading T_ARCHIVESCLASS...
prompt Table is empty
prompt Loading T_CERTIFICATE...
prompt Table is empty
prompt Loading T_CHANGE...
prompt Table is empty
prompt Loading T_CONTRACT...
prompt Table is empty
prompt Loading T_DEPT...
prompt Table is empty
prompt Loading T_EMPLOYEE...
prompt Table is empty
prompt Loading T_TRAIN...
prompt Table is empty
prompt Loading T_EMPLOYEE_TRAIN...
prompt Table is empty
prompt Loading T_FORMEREMP...
prompt Table is empty
prompt Loading T_RECORD...
prompt Table is empty
prompt Loading T_RESUME...
prompt Table is empty
prompt Loading T_REWARD...
prompt Table is empty
prompt Loading T_ROLE...
insert into T_ROLE (roleid, rolename)
values (1, '管理员');
insert into T_ROLE (roleid, rolename)
values (2, 'HR');
insert into T_ROLE (roleid, rolename)
values (3, '普通用户');
commit;
prompt 3 records loaded
prompt Loading T_TRAINSCORE...
prompt Table is empty
prompt Loading T_TRANSFERRECORD...
prompt Table is empty
prompt Loading T_USER...
insert into T_USER (userid, username, password, roleid)
values (1, 'admin', '123', 1);
insert into T_USER (userid, username, password, roleid)
values (2, 'hrm', 'hrm', 2);
insert into T_USER (userid, username, password, roleid)
values (3, 'Jobs', '123', null);
commit;
prompt 3 records loaded
prompt Enabling foreign key constraints for T_EMPLOYEE_TRAIN...
alter table T_EMPLOYEE_TRAIN enable constraint FK_T_EMPLOY_REFERENCE_T_EMPLOY;
alter table T_EMPLOYEE_TRAIN enable constraint FK_T_EMPLOY_REFERENCE_T_TRAIN;
prompt Enabling foreign key constraints for T_USER...
alter table T_USER enable constraint FK_T_USER_REFERENCE_T_ROLE;
prompt Enabling triggers for T_ARCHIVE...
alter table T_ARCHIVE enable all triggers;
prompt Enabling triggers for T_ARCHIVESCLASS...
alter table T_ARCHIVESCLASS enable all triggers;
prompt Enabling triggers for T_CERTIFICATE...
alter table T_CERTIFICATE enable all triggers;
prompt Enabling triggers for T_CHANGE...
alter table T_CHANGE enable all triggers;
prompt Enabling triggers for T_CONTRACT...
alter table T_CONTRACT enable all triggers;
prompt Enabling triggers for T_DEPT...
alter table T_DEPT enable all triggers;
prompt Enabling triggers for T_EMPLOYEE...
alter table T_EMPLOYEE enable all triggers;
prompt Enabling triggers for T_TRAIN...
alter table T_TRAIN enable all triggers;
prompt Enabling triggers for T_EMPLOYEE_TRAIN...
alter table T_EMPLOYEE_TRAIN enable all triggers;
prompt Enabling triggers for T_FORMEREMP...
alter table T_FORMEREMP enable all triggers;
prompt Enabling triggers for T_RECORD...
alter table T_RECORD enable all triggers;
prompt Enabling triggers for T_RESUME...
alter table T_RESUME enable all triggers;
prompt Enabling triggers for T_REWARD...
alter table T_REWARD enable all triggers;
prompt Enabling triggers for T_ROLE...
alter table T_ROLE enable all triggers;
prompt Enabling triggers for T_TRAINSCORE...
alter table T_TRAINSCORE enable all triggers;
prompt Enabling triggers for T_TRANSFERRECORD...
alter table T_TRANSFERRECORD enable all triggers;
prompt Enabling triggers for T_USER...
alter table T_USER enable all triggers;
set feedback on
set define on
prompt Done.
