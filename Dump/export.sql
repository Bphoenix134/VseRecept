
--------------------------------------------------------
--  DDL for Table �����
--------------------------------------------------------

  CREATE TABLE "HR"."�����" 
   (	"��������" VARCHAR2(50 BYTE), 
	"���" VARCHAR2(40 BYTE), 
	"�����_���" NUMBER(5,0), 
	"����������_������" NUMBER(2,0), 
	"�����" VARCHAR2(20 BYTE), 
	"�����������_������������" VARCHAR2(50 BYTE), 
	"������������" NUMBER(4,0), 
	"�����_�������������" NUMBER(4,0), 
	"������������������_�������������" VARCHAR2(1000 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ������_�������������
--------------------------------------------------------

  CREATE TABLE "HR"."������_�������������" 
   (	"ID_������������" NUMBER(6,0), 
	"�������" VARCHAR2(40 BYTE), 
	"���" VARCHAR2(40 BYTE), 
	"��������" VARCHAR2(40 BYTE), 
	"���" VARCHAR2(20 BYTE), 
	"���_��������" DATE, 
	"�����_����������" VARCHAR2(40 BYTE), 
	"���_�������" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table �����������
--------------------------------------------------------

  CREATE TABLE "HR"."�����������" 
   (	"��������" VARCHAR2(30 BYTE), 
	"����������" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ������������
--------------------------------------------------------

  CREATE TABLE "HR"."������������" 
   (	"ID_������������" NUMBER(6,0), 
	"�����" VARCHAR2(20 BYTE), 
	"������" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ������
--------------------------------------------------------

  CREATE TABLE "HR"."������" 
   (	"�����" VARCHAR2(50 BYTE), 
	"����������" VARCHAR2(60 BYTE), 
	"����������" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ���_�����
--------------------------------------------------------

  CREATE TABLE "HR"."���_�����" 
   (	"��������" VARCHAR2(40 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for View EMP_DETAILS_VIEW
--------------------------------------------------------

  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "HR"."EMP_DETAILS_VIEW" ("EMPLOYEE_ID", "JOB_ID", "MANAGER_ID", "DEPARTMENT_ID", "LOCATION_ID", "COUNTRY_ID", "FIRST_NAME", "LAST_NAME", "SALARY", "COMMISSION_PCT", "DEPARTMENT_NAME", "JOB_TITLE", "CITY", "STATE_PROVINCE", "COUNTRY_NAME", "REGION_NAME") AS 
  SELECT
   e.employee_id,
   e.job_id,
   e.manager_id,
   e.department_id,
   d.location_id,
   l.country_id,
   e.first_name,
   e.last_name,
   e.salary,
   e.commission_pct,
   d.department_name,
   j.job_title,
   l.city,
   l.state_province,
   c.country_name,
   r.region_name
   FROM
   employees e,
   departments d,
   jobs j,
   locations l,
   countries c,
   regions r
   WHERE e.department_id = d.department_id
   AND d.location_id = l.location_id
   AND l.country_id = c.country_id
   AND c.region_id = r.region_id
   AND j.job_id = e.job_id
   WITH READ ONLY
;
REM INSERTING into HR."�����"
SET DEFINE OFF;
Insert into HR."�����" ("��������","���","�����_���","����������_������","�����","�����������_������������","������������","�����_�������������","������������������_�������������") values ('����','����','500','6','�����','�����','200','90','������� ���� �� ������������� ���������� �������!');
Insert into HR."�����" ("��������","���","�����_���","����������_������","�����","�����������_������������","������������","�����_�������������","������������������_�������������") values ('��������','�������','200','3','�����','������','150','30','������� �������� �������������� ����� �� ����� ��������');
Insert into HR."�����" ("��������","���","�����_���","����������_������","�����","�����������_������������","������������","�����_�������������","������������������_�������������") values ('���������','������','156','2','����','�����������','300','75','���������� �������� ��������� � ������ ����');
REM INSERTING into HR."������_�������������"
SET DEFINE OFF;
Insert into HR."������_�������������" ("ID_������������","�������","���","��������","���","���_��������","�����_����������","���_�������") values ('1','�����������','����','�������','�',to_date('12.03.41','DD.MM.RR'),'������','2352536');
REM INSERTING into HR."�����������"
SET DEFINE OFF;
Insert into HR."�����������" ("��������","����������") values ('������','���');
Insert into HR."�����������" ("��������","����������") values ('���������','���');
Insert into HR."�����������" ("��������","����������") values ('��������','���');
Insert into HR."�����������" ("��������","����������") values ('��� ��������','���');
Insert into HR."�����������" ("��������","����������") values ('��� �������','���');
Insert into HR."�����������" ("��������","����������") values ('�������','���');
Insert into HR."�����������" ("��������","����������") values ('������� �������','���');
Insert into HR."�����������" ("��������","����������") values ('�������','���');
Insert into HR."�����������" ("��������","����������") values ('���','���');
Insert into HR."�����������" ("��������","����������") values ('����','���');
Insert into HR."�����������" ("��������","����������") values ('�������','���');
Insert into HR."�����������" ("��������","����������") values ('���� �������','���');
Insert into HR."�����������" ("��������","����������") values ('�������','���');
REM INSERTING into HR."������������"
SET DEFINE OFF;
Insert into HR."������������" ("ID_������������","�����","������") values ('1','phenya','dawadd���fsf');
REM INSERTING into HR."������"
SET DEFINE OFF;
Insert into HR."������" ("�����","����������","����������") values ('��������','������','2��');
Insert into HR."������" ("�����","����������","����������") values ('��������','���','100��');
Insert into HR."������" ("�����","����������","����������") values ('��������','�������','35��');
Insert into HR."������" ("�����","����������","����������") values ('��������','�������','240��');
Insert into HR."������" ("�����","����������","����������") values ('��������','�������','1��');
REM INSERTING into HR."���_�����"
SET DEFINE OFF;
Insert into HR."���_�����" ("��������") values ('������');
Insert into HR."���_�����" ("��������") values ('������');
Insert into HR."���_�����" ("��������") values ('������');
Insert into HR."���_�����" ("��������") values ('�������');
Insert into HR."���_�����" ("��������") values ('������_�����');
Insert into HR."���_�����" ("��������") values ('����');
Insert into HR."���_�����" ("��������") values ('������');
Insert into HR."���_�����" ("��������") values ('�����');
Insert into HR."���_�����" ("��������") values ('���');
REM INSERTING into HR.EMP_DETAILS_VIEW
SET DEFINE OFF;
--------------------------------------------------------
--  DDL for Index SYS_C008389
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."SYS_C008389" ON "HR"."MARKET" ("FIRM_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOLOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index �����_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."�����_PK" ON "HR"."�����" ("��������") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index ������_�������������_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."������_�������������_PK" ON "HR"."������_�������������" ("ID_������������") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index �����������_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."�����������_PK" ON "HR"."�����������" ("��������") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index ������������_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."������������_PK" ON "HR"."������������" ("ID_������������") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index ���_�����_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."���_�����_PK" ON "HR"."���_�����" ("��������") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Procedure ADD_JOB_HISTORY
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "HR"."ADD_JOB_HISTORY" 
   ( p_emp_id job_history.employee_id%type
   , p_start_date job_history.start_date%type
   , p_end_date job_history.end_date%type
   , p_job_id job_history.job_id%type
   , p_department_id job_history.department_id%type
   )
   IS
   BEGIN
   INSERT INTO job_history (employee_id, start_date, end_date,
   job_id, department_id)
   VALUES(p_emp_id, p_start_date, p_end_date, p_job_id, p_department_id);
   END add_job_history;

/
--------------------------------------------------------
--  DDL for Procedure SECURE_DML
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "HR"."SECURE_DML" 
         IS
         BEGIN
   IF TO_CHAR (SYSDATE, 'HH24:MI') NOT BETWEEN '08:00' AND '18:00'
   OR TO_CHAR (SYSDATE, 'DY') IN ('SAT', 'SUN') THEN
   RAISE_APPLICATION_ERROR (-20205,
   'You may only make changes during normal office hours');
   END IF;
   END secure_dml;

/
--------------------------------------------------------
--  Constraints for Table �����
--------------------------------------------------------

  ALTER TABLE "HR"."�����" ADD CONSTRAINT "�����_PK" PRIMARY KEY ("��������")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "HR"."�����" MODIFY ("�����_���" NOT NULL ENABLE);
  ALTER TABLE "HR"."�����" MODIFY ("����������_������" NOT NULL ENABLE);
  ALTER TABLE "HR"."�����" MODIFY ("������������" NOT NULL ENABLE);
  ALTER TABLE "HR"."�����" MODIFY ("�����_�������������" NOT NULL ENABLE);
  ALTER TABLE "HR"."�����" MODIFY ("��������" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ������_�������������
--------------------------------------------------------

  ALTER TABLE "HR"."������_�������������" MODIFY ("ID_������������" NOT NULL ENABLE);
  ALTER TABLE "HR"."������_�������������" MODIFY ("�������" NOT NULL ENABLE);
  ALTER TABLE "HR"."������_�������������" MODIFY ("���" NOT NULL ENABLE);
  ALTER TABLE "HR"."������_�������������" MODIFY ("��������" NOT NULL ENABLE);
  ALTER TABLE "HR"."������_�������������" MODIFY ("���" NOT NULL ENABLE);
  ALTER TABLE "HR"."������_�������������" MODIFY ("���_��������" NOT NULL ENABLE);
  ALTER TABLE "HR"."������_�������������" MODIFY ("�����_����������" NOT NULL ENABLE);
  ALTER TABLE "HR"."������_�������������" MODIFY ("���_�������" NOT NULL ENABLE);
  ALTER TABLE "HR"."������_�������������" ADD CONSTRAINT "������_�������������_PK" PRIMARY KEY ("ID_������������")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table �����������
--------------------------------------------------------

  ALTER TABLE "HR"."�����������" ADD CONSTRAINT "�����������_PK" PRIMARY KEY ("��������")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table ������������
--------------------------------------------------------

  ALTER TABLE "HR"."������������" MODIFY ("ID_������������" NOT NULL ENABLE);
  ALTER TABLE "HR"."������������" MODIFY ("�����" NOT NULL ENABLE);
  ALTER TABLE "HR"."������������" MODIFY ("������" NOT NULL ENABLE);
  ALTER TABLE "HR"."������������" ADD CONSTRAINT "������������_PK" PRIMARY KEY ("ID_������������")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table ������
--------------------------------------------------------

  ALTER TABLE "HR"."������" MODIFY ("�����" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ���_�����
--------------------------------------------------------

  ALTER TABLE "HR"."���_�����" ADD CONSTRAINT "���_�����_PK" PRIMARY KEY ("��������")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ������_�������������
--------------------------------------------------------

  ALTER TABLE "HR"."������_�������������" ADD FOREIGN KEY ("ID_������������")
	  REFERENCES "HR"."������������" ("ID_������������") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ������
--------------------------------------------------------

  ALTER TABLE "HR"."������" ADD FOREIGN KEY ("�����")
	  REFERENCES "HR"."�����" ("��������") ENABLE;
  ALTER TABLE "HR"."������" ADD FOREIGN KEY ("����������")
	  REFERENCES "HR"."�����������" ("��������") ENABLE;
