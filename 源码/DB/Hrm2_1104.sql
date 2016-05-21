/*==============================================================*/
/* DBMS name:      ORACLE Version 10g                           */
/* Created on:     2015/11/4 10:23:40                           */
/*==============================================================*/


alter table t_dept
   drop constraint FK_T_DEPT_REFERENCE_T_EMPLOY;

alter table t_employee_train
   drop constraint FK_T_EMPLOY_REFERENCE_T_TRAIN;

alter table t_employee_train
   drop constraint FK_T_EMPLOY_REFERENCE_T_EMPLOY;

alter table t_trainclass
   drop constraint FK_T_TRAINC_REFERENCE_T_TRAIN;

alter table t_user
   drop constraint FK_T_USER_REFERENCE_T_ROLE;

drop table t_ArchivesClass cascade constraints;

drop table t_archive cascade constraints;

drop table t_certificate cascade constraints;

drop table t_change cascade constraints;

drop table t_contract cascade constraints;

drop table t_dept cascade constraints;

drop table t_employee cascade constraints;

drop table t_employee_train cascade constraints;

drop table t_record cascade constraints;

drop table t_reward cascade constraints;

drop table t_role cascade constraints;

drop table t_train cascade constraints;

drop table t_trainclass cascade constraints;

drop index Index_1;

drop table t_trainscore cascade constraints;

drop table t_user cascade constraints;

/*==============================================================*/
/* Table: t_ArchivesClass                                     */
/*==============================================================*/
create table t_ArchivesClass  (
   archiveclassid     NUMBER                          not null,
   achiveclassname    VARCHAR(20),
   constraint PK_T_ARCHIVESCLASS primary key (archiveclassid)
);

comment on table t_ArchivesClass is
'档案分类';

comment on column t_ArchivesClass.archiveclassid is
'分类id';

comment on column t_ArchivesClass.achiveclassname is
'分类名称';

/*==============================================================*/
/* Table: t_archive                                           */
/*==============================================================*/
create table t_archive  (
   arcid              NUMBER                          not null,
   empid              NUMBER,
   arcnum             VARCHAR2(20),
   arcname            VARCHAR2(30),
   abstract           VARCHAR2(50),
   remark             VARCHAR2(30),
   archiveclassid     NUMBER,
   Column_8           CHAR(10),
   Column_9           CHAR(10),
   Column_10          CHAR(10),
   constraint PK_T_ARCHIVE primary key (arcid)
);

comment on table t_archive is
'档案';

comment on column t_archive.arcid is
'档案id';

comment on column t_archive.empid is
'员工id';

comment on column t_archive.arcnum is
'档案编号';

comment on column t_archive.arcname is
'名称';

comment on column t_archive.abstract is
'摘要';

comment on column t_archive.remark is
'备注';

comment on column t_archive.archiveclassid is
'类别id';

comment on column t_archive.Column_8 is
'Column_8';

comment on column t_archive.Column_9 is
'Column_9';

comment on column t_archive.Column_10 is
'Column_10';

/*==============================================================*/
/* Table: t_certificate                                       */
/*==============================================================*/
create table t_certificate  (
   certid             NUMBER                          not null,
   trainid            NUMBER,
   certname           VARCHAR(20),
   certnumber         VARCHAR2(20),
   certdate           DATE,
   constraint PK_T_CERTIFICATE primary key (certid)
);

comment on table t_certificate is
'证书';

comment on column t_certificate.certid is
'certid';

comment on column t_certificate.trainid is
'trainid';

comment on column t_certificate.certname is
'certname';

comment on column t_certificate.certnumber is
'certnumber';

comment on column t_certificate.certdate is
'certdate';

/*==============================================================*/
/* Table: t_change                                            */
/*==============================================================*/
create table t_change  (
   changeid           NUMBER                          not null,
   Column_2           CHAR(10),
   Column_3           CHAR(10),
   Column_4           CHAR(10),
   Column_5           CHAR(10),
   constraint PK_T_CHANGE primary key (changeid)
);

comment on table t_change is
'人事调动';

comment on column t_change.changeid is
'change';

comment on column t_change.Column_2 is
'Column_2';

comment on column t_change.Column_3 is
'Column_3';

comment on column t_change.Column_4 is
'Column_4';

comment on column t_change.Column_5 is
'Column_5';

/*==============================================================*/
/* Table: t_contract                                          */
/*==============================================================*/
create table t_contract  (
   cosid              NUMBER                          not null,
   empid              NUMBER,
   cosnum             VARCHAR2(20),
   startdate          DATE,
   enddate            DATE,
   job                VARCHAR(30),
   content            CHAR(10),
   Column_8           CHAR(10),
   Column_9           CHAR(10),
   constraint PK_T_CONTRACT primary key (cosid)
);

comment on table t_contract is
'合同';

comment on column t_contract.cosid is
'cosid';

comment on column t_contract.empid is
'empid';

comment on column t_contract.cosnum is
'cosnum';

comment on column t_contract.startdate is
'startdate';

comment on column t_contract.enddate is
'enddate';

comment on column t_contract.job is
'job';

comment on column t_contract.content is
'content';

comment on column t_contract.Column_8 is
'Column_8';

comment on column t_contract.Column_9 is
'Column_9';

/*==============================================================*/
/* Table: t_dept                                              */
/*==============================================================*/
create table t_dept  (
   empid              NUMBER                          not null,
   deptid             NUMBER,
   deptname           VARCHAR2(20),
   deptlevel          NUMBER,
   parentid           NUMBER,
   Column_5           CHAR(10),
   Column_6           CHAR(10),
   constraint PK_T_DEPT primary key (empid)
);

comment on table t_dept is
'部门';

comment on column t_dept.empid is
'员工id';

comment on column t_dept.deptid is
'deptid';

comment on column t_dept.deptname is
'部门名称';

comment on column t_dept.deptlevel is
'级别';

comment on column t_dept.parentid is
'上级部门';

comment on column t_dept.Column_5 is
'Column_5';

comment on column t_dept.Column_6 is
'Column_6';

/*==============================================================*/
/* Table: t_employee                                          */
/*==============================================================*/
create table t_employee  (
   empid              NUMBER                          not null,
   empname            CHAR(10),
   empsex             NUMBER,
   school             VARCHAR2(10),
   degree             VARCHAR2(10),
   deptid             NUMBER,
   job                VARCHAR2(20),
   ranks              VARCHAR2(20),
   state              NUMBER,
   Column_10          CHAR(10),
   Column_11          CHAR(10),
   constraint PK_T_EMPLOYEE primary key (empid)
);

comment on table t_employee is
'员工';

comment on column t_employee.empid is
'员工id';

comment on column t_employee.empname is
'姓名';

comment on column t_employee.empsex is
'性别';

comment on column t_employee.school is
'学历';

comment on column t_employee.degree is
'学位';

comment on column t_employee.deptid is
'部门id';

comment on column t_employee.job is
'职务';

comment on column t_employee.ranks is
'职称';

comment on column t_employee.state is
'状态';

comment on column t_employee.Column_10 is
'Column_10';

comment on column t_employee.Column_11 is
'Column_11';

/*==============================================================*/
/* Table: t_employee_train                                    */
/*==============================================================*/
create table t_employee_train  (
   employ_train_id    NUMBER                          not null,
   empid              NUMBER,
   trainid            NUMBER,
   Column_4           CHAR(10),
   constraint PK_T_EMPLOYEE_TRAIN primary key (employ_train_id)
);

comment on table t_employee_train is
'employee_train';

comment on column t_employee_train.employ_train_id is
'id';

comment on column t_employee_train.empid is
'员工id';

comment on column t_employee_train.trainid is
'培训id';

/*==============================================================*/
/* Table: t_record                                            */
/*==============================================================*/
create table t_record  (
   recordid           NUMBER                          not null,
   Column_2           CHAR(10),
   Column_3           CHAR(10),
   Column_4           CHAR(10),
   Column_5           CHAR(10),
   constraint PK_T_RECORD primary key (recordid)
);

comment on table t_record is
'履历';

comment on column t_record.recordid is
'recordid';

comment on column t_record.Column_2 is
'Column_2';

comment on column t_record.Column_3 is
'Column_3';

comment on column t_record.Column_4 is
'Column_4';

comment on column t_record.Column_5 is
'Column_5';

/*==============================================================*/
/* Table: t_reward                                            */
/*==============================================================*/
create table t_reward  (
   rewid              NUMBER                          not null,
   empid              NUMBER,
   empname            VARCHAR2(20),
   rewtype            number                          not null,
   rewdate            date,
   rewtitle           VARCHAR2(30),
   rewcontent         VARCHAR2(100),
   rewlevel           NUMBER,
   constraint PK_T_REWARD primary key (rewid)
);

comment on table t_reward is
'奖惩表';

comment on column t_reward.rewid is
'rewardid';

comment on column t_reward.empid is
'员工id';

comment on column t_reward.empname is
'员工姓名';

comment on column t_reward.rewtype is
'类型';

comment on column t_reward.rewdate is
'获奖时间';

comment on column t_reward.rewtitle is
'奖惩标题';

comment on column t_reward.rewcontent is
'奖惩内容';

comment on column t_reward.rewlevel is
'奖金类别';

/*==============================================================*/
/* Table: t_role                                              */
/*==============================================================*/
create table t_role  (
   roleid             NUMBER                          not null,
   rolename           VARCHAR2(20),
   Column_3           CHAR(10),
   constraint PK_T_ROLE primary key (roleid)
);

comment on table t_role is
'角色';

comment on column t_role.roleid is
'roleid';

comment on column t_role.rolename is
'rolename';

comment on column t_role.Column_3 is
'Column_3';

/*==============================================================*/
/* Table: t_train                                             */
/*==============================================================*/
create table t_train  (
   trainid            NUMBER                          not null,
   trainidclassid     NUMBER,
   trainkind          VARCHAR2(20),
   trainnumber        VARCHAR2(20),
   trainname          VARCHAR2(30),
   startdate          date,
   enddate            DATE,
   traincost          VARCHAR2(20),
   trainplace         VARCHAR(30),
   Column_10          CHAR(10),
   Column_11          CHAR(10),
   constraint PK_T_TRAIN primary key (trainid)
);

comment on table t_train is
'培训';

comment on column t_train.trainid is
'trainid';

comment on column t_train.trainidclassid is
'培训类别';

comment on column t_train.trainkind is
'性质';

comment on column t_train.trainnumber is
'培训编号';

comment on column t_train.trainname is
'培训名称';

comment on column t_train.startdate is
'开始时间';

comment on column t_train.enddate is
'结束时间';

comment on column t_train.traincost is
'费用';

comment on column t_train.trainplace is
'地点';

comment on column t_train.Column_10 is
'Column_10';

comment on column t_train.Column_11 is
'Column_11';

/*==============================================================*/
/* Table: t_trainclass                                        */
/*==============================================================*/
create table t_trainclass  (
   trainclassid       NUMBER,
   trainclassname     VARCHAR2(20),
   Column_3           CHAR(10),
   Column_5           CHAR(10),
   constraint PK_T_TRAINCLASS primary key ()
);

comment on table t_trainclass is
'培训类别';

comment on column t_trainclass.trainclassid is
'trainclassid';

comment on column t_trainclass.trainclassname is
'trainclassname';

comment on column t_trainclass.Column_3 is
'Column_3';

/*==============================================================*/
/* Table: t_trainscore                                        */
/*==============================================================*/
create table t_trainscore  (
   trainscoreid       NUMBER                          not null,
   trainid            NUMBER,
   empid              NUMBER,
   score              NUMBER,
   Column_5           CHAR(10),
   Column_6           CHAR(10),
   Column_7           CHAR(10),
   constraint PK_T_TRAINSCORE primary key (trainscoreid)
);

comment on table t_trainscore is
'培训成绩';

comment on column t_trainscore.trainscoreid is
'trainscoreid';

comment on column t_trainscore.trainid is
'trainid';

comment on column t_trainscore.empid is
'empid';

comment on column t_trainscore.score is
'score';

comment on column t_trainscore.Column_5 is
'Column_5';

comment on column t_trainscore.Column_6 is
'Column_6';

comment on column t_trainscore.Column_7 is
'Column_7';

/*==============================================================*/
/* Index: Index_1                                             */
/*==============================================================*/
create index Index_1 on t_trainscore (
   
);

/*==============================================================*/
/* Table: t_user                                              */
/*==============================================================*/
create table t_user  (
   userid             NUMBER                          not null,
   username           VARCHAR2(15),
   password           VARCHAR2(15),
   roleid             NUMBER,
   Column_5           CHAR(10),
   Column_6           CHAR(10),
   constraint PK_T_USER primary key (userid)
);

comment on table t_user is
'用户';

comment on column t_user.userid is
'id';

comment on column t_user.username is
'username';

comment on column t_user.password is
'password';

comment on column t_user.roleid is
'roleid';

comment on column t_user.Column_5 is
'Column_5';

comment on column t_user.Column_6 is
'Column_6';

alter table t_dept
   add constraint FK_T_DEPT_REFERENCE_T_EMPLOY foreign key (empid)
      references t_employee (empid);

alter table t_employee_train
   add constraint FK_T_EMPLOY_REFERENCE_T_TRAIN foreign key (trainid)
      references t_train (trainid);

alter table t_employee_train
   add constraint FK_T_EMPLOY_REFERENCE_T_EMPLOY foreign key (empid)
      references t_employee (empid);

alter table t_trainclass
   add constraint FK_T_TRAINC_REFERENCE_T_TRAIN foreign key (trainclassid)
      references t_train (trainid);

alter table t_user
   add constraint FK_T_USER_REFERENCE_T_ROLE foreign key (roleid)
      references t_role (roleid);

