prompt PL/SQL Developer import file
prompt Created on 2015年11月11日 by young
set feedback off
set define off
prompt Dropping T_ARCHIVE...
drop table T_ARCHIVE cascade constraints;
prompt Dropping T_ARCHIVESCLASS...
drop table T_ARCHIVESCLASS cascade constraints;
prompt Dropping T_CERTIFICATE...
drop table T_CERTIFICATE cascade constraints;
prompt Dropping T_CONTRACT...
drop table T_CONTRACT cascade constraints;
prompt Dropping T_DEPT...
drop table T_DEPT cascade constraints;
prompt Dropping T_EMPLOYEE...
drop table T_EMPLOYEE cascade constraints;
prompt Dropping T_FORMEREMP...
drop table T_FORMEREMP cascade constraints;
prompt Dropping T_RESUME...
drop table T_RESUME cascade constraints;
prompt Dropping T_REWARD...
drop table T_REWARD cascade constraints;
prompt Dropping T_ROLE...
drop table T_ROLE cascade constraints;
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
  summary        VARCHAR2(150),
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
  empid   NUMBER not null,
  empname VARCHAR2(20),
  empsex  NUMBER,
  school  VARCHAR2(40),
  degree  VARCHAR2(20),
  deptid  NUMBER,
  job     VARCHAR2(40),
  ranks   VARCHAR2(20),
  state   NUMBER,
  age     NUMBER
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

prompt Creating T_FORMEREMP...
create table T_FORMEREMP
(
  recordid      NUMBER not null,
  empname       VARCHAR2(20),
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

prompt Creating T_RESUME...
create table T_RESUME
(
  resumeid   NUMBER not null,
  empid      NUMBER not null,
  empname    VARCHAR2(20),
  deptid     NUMBER,
  job        VARCHAR2(20),
  school     VARCHAR2(20),
  jobcontent VARCHAR2(20),
  trainscore NUMBER,
  startdate  VARCHAR2(20),
  enddate    VARCHAR2(20)
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
  password VARCHAR2(40),
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

prompt Disabling triggers for T_ARCHIVE...
alter table T_ARCHIVE disable all triggers;
prompt Disabling triggers for T_ARCHIVESCLASS...
alter table T_ARCHIVESCLASS disable all triggers;
prompt Disabling triggers for T_CERTIFICATE...
alter table T_CERTIFICATE disable all triggers;
prompt Disabling triggers for T_CONTRACT...
alter table T_CONTRACT disable all triggers;
prompt Disabling triggers for T_DEPT...
alter table T_DEPT disable all triggers;
prompt Disabling triggers for T_EMPLOYEE...
alter table T_EMPLOYEE disable all triggers;
prompt Disabling triggers for T_FORMEREMP...
alter table T_FORMEREMP disable all triggers;
prompt Disabling triggers for T_RESUME...
alter table T_RESUME disable all triggers;
prompt Disabling triggers for T_REWARD...
alter table T_REWARD disable all triggers;
prompt Disabling triggers for T_ROLE...
alter table T_ROLE disable all triggers;
prompt Disabling triggers for T_TRANSFERRECORD...
alter table T_TRANSFERRECORD disable all triggers;
prompt Disabling triggers for T_USER...
alter table T_USER disable all triggers;
prompt Loading T_ARCHIVE...
insert into T_ARCHIVE (arcid, empid, arcnum, arcname, summary, remark, archiveclassid)
values (1, 1, 'BHYD001', '马云的档案', '马云，男，1964年9月10日生于浙江省杭州市', '无', null);
insert into T_ARCHIVE (arcid, empid, arcnum, arcname, summary, remark, archiveclassid)
values (3, 3, 'BHYD003', '李彦宏的档案', '李彦宏，百度公司创始人、董事长兼首席执行官，全面负责百度公司的战略规划和运营管理', '无', null);
insert into T_ARCHIVE (arcid, empid, arcnum, arcname, summary, remark, archiveclassid)
values (4, 4, 'BHYD004', '刘强东的档案', '刘强东，1974年2月14日出生于江苏省宿迁市，京东商城创始人、董事局主席兼首席执行官，毕业于中国人民大学', '无', null);
insert into T_ARCHIVE (arcid, empid, arcnum, arcname, summary, remark, archiveclassid)
values (5, 5, 'BHYD005', '周鸿祎的档案', '周鸿祎（zhōu hóng yī），1970年10月4日生于湖北黄冈，360公司创始人、董事长兼CEO、奇酷CEO和知名天使投资人。', '无', null);
insert into T_ARCHIVE (arcid, empid, arcnum, arcname, summary, remark, archiveclassid)
values (2, 2, 'BHYD002', '马化腾的档案', '马化腾，男，1971年10月29日生于广东省汕头市潮南区。腾讯公司主要创办人之一', '无', null);
commit;
prompt 5 records loaded
prompt Loading T_ARCHIVESCLASS...
prompt Table is empty
prompt Loading T_CERTIFICATE...
prompt Table is empty
prompt Loading T_CONTRACT...
insert into T_CONTRACT (cosid, empid, cosnum, startdate, enddate, job, content)
values (1, 1, 'BHYD00001' || chr(10) || '', to_date('01-11-2014', 'dd-mm-yyyy'), to_date('10-11-2015', 'dd-mm-yyyy'), '阿里巴巴', 'CEO       ');
insert into T_CONTRACT (cosid, empid, cosnum, startdate, enddate, job, content)
values (2, 2, 'BHYD00002', to_date('01-11-2011', 'dd-mm-yyyy'), to_date('10-11-2015', 'dd-mm-yyyy'), '腾讯', 'CEO       ');
insert into T_CONTRACT (cosid, empid, cosnum, startdate, enddate, job, content)
values (3, 3, 'BHYD00003', to_date('01-11-2011', 'dd-mm-yyyy'), to_date('01-12-2015', 'dd-mm-yyyy'), '百度', 'CEO       ');
insert into T_CONTRACT (cosid, empid, cosnum, startdate, enddate, job, content)
values (4, 4, 'BHYD00004', to_date('01-11-2007', 'dd-mm-yyyy'), to_date('01-11-2014', 'dd-mm-yyyy'), '京东', 'CEO       ');
insert into T_CONTRACT (cosid, empid, cosnum, startdate, enddate, job, content)
values (5, 5, 'BHYD00005', to_date('01-11-2009', 'dd-mm-yyyy'), to_date('01-11-2017', 'dd-mm-yyyy'), '360', 'CEO       ');
commit;
prompt 5 records loaded
prompt Loading T_DEPT...
insert into T_DEPT (deptid, deptname, deptlevel, "SuperiorDeptId")
values (1, '产品部', 1, 1);
insert into T_DEPT (deptid, deptname, deptlevel, "SuperiorDeptId")
values (2, '技术部', 2, 1);
insert into T_DEPT (deptid, deptname, deptlevel, "SuperiorDeptId")
values (3, '运营部', 1, 1);
insert into T_DEPT (deptid, deptname, deptlevel, "SuperiorDeptId")
values (5, '财务部', 1, 6);
insert into T_DEPT (deptid, deptname, deptlevel, "SuperiorDeptId")
values (6, '行政部', 2, 6);
insert into T_DEPT (deptid, deptname, deptlevel, "SuperiorDeptId")
values (7, '人事部', 2, 6);
insert into T_DEPT (deptid, deptname, deptlevel, "SuperiorDeptId")
values (4, '市场部', 1, 1);
insert into T_DEPT (deptid, deptname, deptlevel, "SuperiorDeptId")
values (234, '微软分部', 1, 2);
commit;
prompt 8 records loaded
prompt Loading T_EMPLOYEE...
insert into T_EMPLOYEE (empid, empname, empsex, school, degree, deptid, job, ranks, state, age)
values (1, '马云 ', 1, '中国人民大学', '学士学位', 2, '阿里', null, 1, 41);
insert into T_EMPLOYEE (empid, empname, empsex, school, degree, deptid, job, ranks, state, age)
values (2, '马化腾 ', 1, '中国人民大学', '学士学位', 2, '腾讯', null, 1, 41);
insert into T_EMPLOYEE (empid, empname, empsex, school, degree, deptid, job, ranks, state, age)
values (3, '李彦宏 ', 1, '中国人民大学', '学士学位', 2, '百度', null, 1, 41);
insert into T_EMPLOYEE (empid, empname, empsex, school, degree, deptid, job, ranks, state, age)
values (7, '刘强西 ', 1, '中国人民大学', '学士学位', 2, '京西', null, 1, 41);
insert into T_EMPLOYEE (empid, empname, empsex, school, degree, deptid, job, ranks, state, age)
values (21, '马云2', 1, '中国人民大学', '学士学位', 2, '阿里', null, 1, 51);
insert into T_EMPLOYEE (empid, empname, empsex, school, degree, deptid, job, ranks, state, age)
values (22, '马化腾2 ', 1, '中国人民大学', '学士学位', 2, '腾讯', null, 1, 41);
insert into T_EMPLOYEE (empid, empname, empsex, school, degree, deptid, job, ranks, state, age)
values (23, '李彦宏2 ', 1, '中国人民大学', '学士学位', 2, '百度', null, 1, 41);
insert into T_EMPLOYEE (empid, empname, empsex, school, degree, deptid, job, ranks, state, age)
values (27, '刘强西2 ', 1, '中国人民大学', '学士学位', 2, '京西', null, 1, 41);
insert into T_EMPLOYEE (empid, empname, empsex, school, degree, deptid, job, ranks, state, age)
values (24, '刘强东2 ', 1, '中国人民大学', '学士学位', 2, '京东', null, 1, 41);
insert into T_EMPLOYEE (empid, empname, empsex, school, degree, deptid, job, ranks, state, age)
values (25, '周鸿祎2 ', 1, '西安交通大学', '学士学位', 2, '360', null, 1, 50);
insert into T_EMPLOYEE (empid, empname, empsex, school, degree, deptid, job, ranks, state, age)
values (26, '雷军2   ', 1, '西安交通大学', '学士学位', 4, '小米', null, 1, 43);
insert into T_EMPLOYEE (empid, empname, empsex, school, degree, deptid, job, ranks, state, age)
values (28, '黄章2    ', 1, '第一中学', '初中', 3, '魅族', null, 1, 39);
insert into T_EMPLOYEE (empid, empname, empsex, school, degree, deptid, job, ranks, state, age)
values (49, '罗永浩2 ', 1, '延边第二中学', '高中', 1, '锤子科技', null, 1, 43);
insert into T_EMPLOYEE (empid, empname, empsex, school, degree, deptid, job, ranks, state, age)
values (40, '任正非2 ', 1, '重庆建筑工程学院', '学士学位', 2, '华为', null, 1, 71);
insert into T_EMPLOYEE (empid, empname, empsex, school, degree, deptid, job, ranks, state, age)
values (41, '张朝阳2 ', 1, '清华大学', '学士学位', 5, '搜狐', null, 1, 39);
insert into T_EMPLOYEE (empid, empname, empsex, school, degree, deptid, job, ranks, state, age)
values (42, '丁磊2    ', 1, '电子科技大学', '学士学位', 7, '网易', null, 1, 43);
insert into T_EMPLOYEE (empid, empname, empsex, school, degree, deptid, job, ranks, state, age)
values (43, '俞敏洪2 ', 1, '北京大学', '学士学位', 6, '新东方', null, 1, 44);
insert into T_EMPLOYEE (empid, empname, empsex, school, degree, deptid, job, ranks, state, age)
values (39, '黄章2    ', 1, '第一中学', '初中', 3, '魅族', null, 1, 39);
insert into T_EMPLOYEE (empid, empname, empsex, school, degree, deptid, job, ranks, state, age)
values (50, '罗永浩2 ', 1, '延边第二中学', '高中', 1, '锤子科技', null, 1, 43);
insert into T_EMPLOYEE (empid, empname, empsex, school, degree, deptid, job, ranks, state, age)
values (51, '任正非2 ', 1, '重庆建筑工程学院', '学士学位', 2, '华为', null, 1, 71);
insert into T_EMPLOYEE (empid, empname, empsex, school, degree, deptid, job, ranks, state, age)
values (52, '张朝阳2 ', 1, '清华大学', '学士学位', 5, '搜狐', null, 1, 59);
insert into T_EMPLOYEE (empid, empname, empsex, school, degree, deptid, job, ranks, state, age)
values (53, '丁磊2    ', 1, '电子科技大学', '学士学位', 7, '网易', null, 1, 43);
insert into T_EMPLOYEE (empid, empname, empsex, school, degree, deptid, job, ranks, state, age)
values (54, '俞敏洪2 ', 1, '北京大学', '学士学位', 6, '新东方', null, 1, 44);
insert into T_EMPLOYEE (empid, empname, empsex, school, degree, deptid, job, ranks, state, age)
values (4, '刘强东 ', 1, '中国人民大学', '学士学位', 2, '京东', null, 1, 41);
insert into T_EMPLOYEE (empid, empname, empsex, school, degree, deptid, job, ranks, state, age)
values (5, '周鸿祎 ', 1, '西安交通大学', '学士学位', 2, '360', null, 1, 40);
insert into T_EMPLOYEE (empid, empname, empsex, school, degree, deptid, job, ranks, state, age)
values (6, '雷军    ', 1, '西安交通大学', '学士学位', 4, '小米', null, 1, 43);
insert into T_EMPLOYEE (empid, empname, empsex, school, degree, deptid, job, ranks, state, age)
values (8, '黄章    ', 1, '第一中学', '初中', 3, '魅族', null, 1, 39);
insert into T_EMPLOYEE (empid, empname, empsex, school, degree, deptid, job, ranks, state, age)
values (9, '罗永浩 ', 1, '延边第二中学', '高中', 1, '锤子科技', null, 1, 43);
insert into T_EMPLOYEE (empid, empname, empsex, school, degree, deptid, job, ranks, state, age)
values (11, '张朝阳 ', 1, '清华大学', '学士学位', 5, '搜狐', null, 1, 39);
insert into T_EMPLOYEE (empid, empname, empsex, school, degree, deptid, job, ranks, state, age)
values (12, '丁磊    ', 1, '电子科技大学', '学士学位', 7, '网易', null, 1, 43);
insert into T_EMPLOYEE (empid, empname, empsex, school, degree, deptid, job, ranks, state, age)
values (13, '俞敏洪 ', 1, '北京大学', '学士学位', 6, '新东方', null, 1, 44);
insert into T_EMPLOYEE (empid, empname, empsex, school, degree, deptid, job, ranks, state, age)
values (29, '黄章    ', 1, '第一中学', '初中', 3, '魅族', null, 1, 39);
insert into T_EMPLOYEE (empid, empname, empsex, school, degree, deptid, job, ranks, state, age)
values (30, '罗永浩 ', 1, '延边第二中学', '高中', 1, '锤子科技', null, 1, 43);
insert into T_EMPLOYEE (empid, empname, empsex, school, degree, deptid, job, ranks, state, age)
values (31, '任正非 ', 1, '重庆建筑工程学院', '学士学位', 2, '华为', null, 1, 71);
insert into T_EMPLOYEE (empid, empname, empsex, school, degree, deptid, job, ranks, state, age)
values (32, '张朝阳 ', 1, '清华大学', '学士学位', 5, '搜狐', null, 1, 39);
insert into T_EMPLOYEE (empid, empname, empsex, school, degree, deptid, job, ranks, state, age)
values (33, '丁磊    ', 1, '电子科技大学', '学士学位', 7, '网易', null, 1, 43);
insert into T_EMPLOYEE (empid, empname, empsex, school, degree, deptid, job, ranks, state, age)
values (34, '俞敏洪 ', 1, '北京大学', '学士学位', 6, '新东方', null, 1, 44);
commit;
prompt 37 records loaded
prompt Loading T_FORMEREMP...
insert into T_FORMEREMP (recordid, empname, empsex, ranks, departuretime, depid, reason)
values (6, '叶良辰', '1', '不服', to_date('14-10-2015', 'dd-mm-yyyy'), 5, '打架斗殴');
insert into T_FORMEREMP (recordid, empname, empsex, ranks, departuretime, depid, reason)
values (7, '叫兽易晓星', '1', '光头美男子', to_date('18-11-2015', 'dd-mm-yyyy'), 4, '回家拍电影');
insert into T_FORMEREMP (recordid, empname, empsex, ranks, departuretime, depid, reason)
values (8, '古永锵', '1', '优酷了没', to_date('01-12-2015', 'dd-mm-yyyy'), 6, '马云已买');
insert into T_FORMEREMP (recordid, empname, empsex, ranks, departuretime, depid, reason)
values (1, '薛蛮子', '1', '网络大咖', to_date('10-05-2011', 'dd-mm-yyyy'), 1, '年纪太大');
insert into T_FORMEREMP (recordid, empname, empsex, ranks, departuretime, depid, reason)
values (2, '史玉柱', '1', '脑白金引领者', to_date('17-06-2010', 'dd-mm-yyyy'), 2, '业绩不好');
insert into T_FORMEREMP (recordid, empname, empsex, ranks, departuretime, depid, reason)
values (3, '李阳', '1', '家暴狂魔', to_date('11-02-2013', 'dd-mm-yyyy'), 3, '态度不好');
insert into T_FORMEREMP (recordid, empname, empsex, ranks, departuretime, depid, reason)
values (4, '章泽天', '2', '奶茶妹妹', to_date('01-08-2012', 'dd-mm-yyyy'), 1, '回家生孩子');
insert into T_FORMEREMP (recordid, empname, empsex, ranks, departuretime, depid, reason)
values (5, '唐骏', '1', '打工皇帝', to_date('01-11-2011', 'dd-mm-yyyy'), 2, '原因未知');
commit;
prompt 8 records loaded
prompt Loading T_RESUME...
insert into T_RESUME (resumeid, empid, empname, deptid, job, school, jobcontent, trainscore, startdate, enddate)
values (2, 9, '罗永浩', 1, '老罗英语', null, '英语培训', 90, null, null);
insert into T_RESUME (resumeid, empid, empname, deptid, job, school, jobcontent, trainscore, startdate, enddate)
values (3, 9, '罗永浩', 1, '牛博网', null, '博客', 85, null, null);
insert into T_RESUME (resumeid, empid, empname, deptid, job, school, jobcontent, trainscore, startdate, enddate)
values (4, 9, '罗永浩', 1, '锤子科技', null, '手机研发', 90, null, null);
insert into T_RESUME (resumeid, empid, empname, deptid, job, school, jobcontent, trainscore, startdate, enddate)
values (0, 22, 'aaa', 2, null, null, null, 45, null, null);
commit;
prompt 4 records loaded
prompt Loading T_REWARD...
insert into T_REWARD (rewid, empid, empname, rewtype, rewdate, rewtitle, rewcontent, rewlevel)
values (1, 1, '马云', 1, to_date('09-11-2015', 'dd-mm-yyyy'), '年终奖', '多领一月薪水', 10);
insert into T_REWARD (rewid, empid, empname, rewtype, rewdate, rewtitle, rewcontent, rewlevel)
values (2, 4, '刘强东', 1, to_date('01-10-2015', 'dd-mm-yyyy'), '结婚假', '双11全场半价', 8);
insert into T_REWARD (rewid, empid, empname, rewtype, rewdate, rewtitle, rewcontent, rewlevel)
values (3, 12, '丁磊', 1, to_date('31-12-2015', 'dd-mm-yyyy'), '年终奖', '原生态绿色猪肉2斤', 3);
insert into T_REWARD (rewid, empid, empname, rewtype, rewdate, rewtitle, rewcontent, rewlevel)
values (4, 1, '雷军', 2, to_date('11-11-2015', 'dd-mm-yyyy'), '光棍奖', '小米NOTE一台', 6);
insert into T_REWARD (rewid, empid, empname, rewtype, rewdate, rewtitle, rewcontent, rewlevel)
values (5, 7, '董明珠', 1, to_date('01-11-2015', 'dd-mm-yyyy'), '自拍奖', '格力手机一部', 1);
commit;
prompt 5 records loaded
prompt Loading T_ROLE...
insert into T_ROLE (roleid, rolename)
values (1, '管理员');
insert into T_ROLE (roleid, rolename)
values (2, 'HR');
insert into T_ROLE (roleid, rolename)
values (3, '普通用户');
commit;
prompt 3 records loaded
prompt Loading T_TRANSFERRECORD...
insert into T_TRANSFERRECORD (recordid, empid, empname, empsex, trftime, formerdepid, depid)
values (102, 7, '董明珠', '2', to_date('09-11-2015 22:32:53', 'dd-mm-yyyy hh24:mi:ss'), 4, 3);
insert into T_TRANSFERRECORD (recordid, empid, empname, empsex, trftime, formerdepid, depid)
values (100, 1, '马云    ', '1', to_date('09-11-2015 04:14:36', 'dd-mm-yyyy hh24:mi:ss'), 1, 3);
insert into T_TRANSFERRECORD (recordid, empid, empname, empsex, trftime, formerdepid, depid)
values (101, 1, '马云    ', '1', to_date('09-11-2015 08:01:25', 'dd-mm-yyyy hh24:mi:ss'), 3, 2);
insert into T_TRANSFERRECORD (recordid, empid, empname, empsex, trftime, formerdepid, depid)
values (0, 6, '雷军    ', '1', to_date('08-11-2015 17:37:05', 'dd-mm-yyyy hh24:mi:ss'), 3, 2);
insert into T_TRANSFERRECORD (recordid, empid, empname, empsex, trftime, formerdepid, depid)
values (1, 6, '雷军    ', '1', to_date('08-11-2015 17:37:29', 'dd-mm-yyyy hh24:mi:ss'), 2, 4);
commit;
prompt 5 records loaded
prompt Loading T_USER...
insert into T_USER (userid, username, password, roleid)
values (13, 'jim', '5e027396789a18c37aeda616e3d7991b', 3);
insert into T_USER (userid, username, password, roleid)
values (6, 'liyanhong', '202cb962ac59075b964b07152d234b70', 3);
insert into T_USER (userid, username, password, roleid)
values (2, 'hrm', '0ae6717ed4b10a21cfd627685a748a46', 1);
insert into T_USER (userid, username, password, roleid)
values (1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 1);
insert into T_USER (userid, username, password, roleid)
values (5, 'mahuateng', '202cb962ac59075b964b07152d234b70', 3);
insert into T_USER (userid, username, password, roleid)
values (7, 'liuqiangdong', '202cb962ac59075b964b07152d234b70', 3);
insert into T_USER (userid, username, password, roleid)
values (8, 'zhouhongyi', '202cb962ac59075b964b07152d234b70', 3);
insert into T_USER (userid, username, password, roleid)
values (9, 'luoyonghao', '202cb962ac59075b964b07152d234b70', 3);
insert into T_USER (userid, username, password, roleid)
values (10, 'likaifu', '202cb962ac59075b964b07152d234b70', 3);
insert into T_USER (userid, username, password, roleid)
values (11, 'root', '63a9f0ea7bb98050796b649e85481845', 1);
insert into T_USER (userid, username, password, roleid)
values (12, '123', '202cb962ac59075b964b07152d234b70', 1);
insert into T_USER (userid, username, password, roleid)
values (4, 'ysq', '202cb962ac59075b964b07152d234b70', 3);
commit;
prompt 12 records loaded
prompt Enabling triggers for T_ARCHIVE...
alter table T_ARCHIVE enable all triggers;
prompt Enabling triggers for T_ARCHIVESCLASS...
alter table T_ARCHIVESCLASS enable all triggers;
prompt Enabling triggers for T_CERTIFICATE...
alter table T_CERTIFICATE enable all triggers;
prompt Enabling triggers for T_CONTRACT...
alter table T_CONTRACT enable all triggers;
prompt Enabling triggers for T_DEPT...
alter table T_DEPT enable all triggers;
prompt Enabling triggers for T_EMPLOYEE...
alter table T_EMPLOYEE enable all triggers;
prompt Enabling triggers for T_FORMEREMP...
alter table T_FORMEREMP enable all triggers;
prompt Enabling triggers for T_RESUME...
alter table T_RESUME enable all triggers;
prompt Enabling triggers for T_REWARD...
alter table T_REWARD enable all triggers;
prompt Enabling triggers for T_ROLE...
alter table T_ROLE enable all triggers;
prompt Enabling triggers for T_TRANSFERRECORD...
alter table T_TRANSFERRECORD enable all triggers;
prompt Enabling triggers for T_USER...
alter table T_USER enable all triggers;
set feedback on
set define on
prompt Done.
