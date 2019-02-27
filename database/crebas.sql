/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2019/2/22 16:11:58                           */
/*==============================================================*/


drop table if exists sys_dict;

drop table if exists sys_menu;

drop table if exists sys_role;

drop table if exists sys_role_menu;

drop table if exists sys_user;

drop table if exists sys_user_role;

/*==============================================================*/
/* Table: sys_dict                                              */
/*==============================================================*/
create table sys_dict
(
   id                   int not null comment '����',
   name                 varchar(100) comment '�ֵ�����',
   type_code            varchar(100) comment '�ֵ����ͱ���',
   pid                  int comment '�ֵ丸��id',
   "order"              int comment '����',
   is_delete            char(1) comment '�Ƿ�ɾ��',
   is_available         char(1) comment '�Ƿ����',
   create_by            varchar(30) comment '������',
   create_date          datetime comment '����ʱ��',
   update_by            varchar(30) comment '������',
   update_date          datetime comment '����ʱ��',
   primary key (id)
);

alter table sys_dict comment '�ֵ��';

/*==============================================================*/
/* Table: sys_menu                                              */
/*==============================================================*/
create table sys_menu
(
   id                   int not null comment '����',
   name                 varchar(30) comment '�˵�����',
   url                  varchar(200) comment '�˵�url',
   type                 char(1) comment '�˵����ͣ�Ӧ�á��˵���ģ��',
   pid                  int comment '�����˵�id',
   "order"              int comment '����',
   is_available         char(1) comment '�Ƿ����',
   create_by            varchar(30) comment '������',
   create_date          datetime comment '����ʱ��',
   update_by            varchar(30) comment '������',
   update_date          datetime comment '����ʱ��',
   is_delete            char(1) comment '�Ƿ�ɾ��',
   primary key (id)
);

alter table sys_menu comment '�˵���';

/*==============================================================*/
/* Table: sys_role                                              */
/*==============================================================*/
create table sys_role
(
   id                   int not null comment '����',
   name                 varchar(30) comment '��ɫ����',
   is_available         char(1) comment '�Ƿ����',
   "describe"           varchar(200) comment '��ɫ����',
   create_by            varchar(30) comment '������',
   create_date          datetime comment '����ʱ��',
   update_by            varchar(30) comment '������',
   update_date          datetime comment '����ʱ��',
   is_delete            char(1) comment '�Ƿ�ɾ��',
   primary key (id)
);

/*==============================================================*/
/* Table: sys_role_menu                                         */
/*==============================================================*/
create table sys_role_menu
(
   id                   int not null comment '����',
   role_id              int comment '��ɫid',
   menu_id              int comment '�˵�id',
   is_delete            char(1) comment '�Ƿ�ɾ��',
   create_by            varchar(30) comment '������',
   create_date          datetime comment '����ʱ��',
   update_by            varchar(30) comment '������',
   update_date          datetime comment '����ʱ��',
   primary key (id)
);

alter table sys_role_menu comment '��ɫ�˵������';

/*==============================================================*/
/* Table: sys_user                                              */
/*==============================================================*/
create table sys_user
(
   id                   int not null comment '����',
   true_name            varchar(30) comment '�û���ʵ����',
   phone                int comment '�ֻ���',
   login_name           varchar(30) comment '��¼�û���',
   email                varchar(30) comment '����',
   password             varchar(50) comment '����',
   is_available         char(1) comment '�Ƿ����',
   is_delete            char(1) comment '�Ƿ�ɾ��',
   create_by            varchar(30) comment '������',
   create_date          datetime comment '����ʱ��',
   update_by            varchar(30) comment '������',
   update_date          datetime comment '����ʱ��',
   primary key (id)
);

alter table sys_user comment '�û���';

/*==============================================================*/
/* Table: sys_user_role                                         */
/*==============================================================*/
create table sys_user_role
(
   id                   int not null comment '����',
   user_id              int comment '�û�id',
   role_id              int comment '��ɫid',
   is_default           char(1) comment '�Ƿ���Ĭ�ϵĽ�ɫ',
   is_available         char(1) comment '�Ƿ����',
   is_delete            char(1) comment '�Ƿ�ɾ��',
   create_by            varchar(30) comment '������',
   create_date          datetime comment '����ʱ��',
   update_by            varchar(30) comment '������',
   update_date          datetime comment '����ʱ��',
   primary key (id)
);

alter table sys_user_role comment '�û���ɫ��';

