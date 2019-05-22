--CREATE USER mbms IDENTIFIED BY mbms;
--GRANT CONNECT, RESOURCE, DBA TO mbms;

DROP SEQUENCE Department_SEQ;
DROP SEQUENCE Building_SEQ;
DROP SEQUENCE Room_SEQ;
DROP SEQUENCE Reserve_history_SEQ;
DROP SEQUENCE Notice_SEQ;

DROP TABLE Department CASCADE CONSTRAINTS;
DROP TABLE Employee CASCADE CONSTRAINTS;
DROP TABLE Building CASCADE CONSTRAINTS;
DROP TABLE Room CASCADE CONSTRAINTS;
DROP TABLE Reserve_history CASCADE CONSTRAINTS;
DROP TABLE Room_Equipment CASCADE CONSTRAINTS;
DROP TABLE Notice CASCADE CONSTRAINTS;
DROP TABLE Meeting_member_list CASCADE CONSTRAINTS;
DROP TABLE Meeting_Equipment_list CASCADE CONSTRAINTS;
DROP TABLE Dept_payment CASCADE CONSTRAINTS;

--Department Table Create SQL
CREATE TABLE Department
(
    dept_no        NUMBER          NOT NULL, 
    dept_name      VARCHAR2(50)    NOT NULL, 
    boss_no        VARCHAR2(50)    NULL, 
    mgr_dept_no    NUMBER          NULL, 
    CONSTRAINT DEPARTMENT_PK PRIMARY KEY (dept_no)
)
/
CREATE SEQUENCE Department_SEQ
START WITH 10
INCREMENT BY 1;
/


COMMENT ON TABLE Department IS '�μ�'
/

COMMENT ON COLUMN Department.dept_no IS '�μ���ȣ'
/

COMMENT ON COLUMN Department.dept_name IS '�μ���'
/

COMMENT ON COLUMN Department.boss_no IS '�μ���'
/

COMMENT ON COLUMN Department.mgr_dept_no IS '�����μ���ȣ'
/

ALTER TABLE Department
    ADD CONSTRAINT FK_Department_mgr_dept_no_Depa FOREIGN KEY (mgr_dept_no)
        REFERENCES Department (dept_no)
/


-- Employee Table Create SQL
CREATE TABLE Employee
(
    emp_no          VARCHAR2(50)     NOT NULL, 
    emp_pw          VARCHAR2(100)    NOT NULL, 
    emp_name        VARCHAR2(50)     NOT NULL, 
    emp_position    VARCHAR2(50)     NOT NULL, 
    emp_email       VARCHAR2(300)    NOT NULL, 
    cell_phone      VARCHAR2(15)     NOT NULL, 
    office_phone    VARCHAR2(15)     NOT NULL, 
    dept_no         NUMBER           NULL, 
    CONSTRAINT EMPLOYEE_PK PRIMARY KEY (emp_no)
)
/

COMMENT ON TABLE Employee IS '���'
/

COMMENT ON COLUMN Employee.emp_no IS '�����ȣ'
/

COMMENT ON COLUMN Employee.emp_pw IS '��й�ȣ'
/

COMMENT ON COLUMN Employee.emp_name IS '�̸�'
/

COMMENT ON COLUMN Employee.emp_position IS '����'
/

COMMENT ON COLUMN Employee.emp_email IS '�̸���'
/

COMMENT ON COLUMN Employee.cell_phone IS '�ڵ�����ȣ'
/

COMMENT ON COLUMN Employee.office_phone IS '�繫�ǹ�ȣ'
/

COMMENT ON COLUMN Employee.dept_no IS '�μ���ȣ'
/

ALTER TABLE Employee
    ADD CONSTRAINT FK_Employee_dept_no_Department FOREIGN KEY (dept_no)
        REFERENCES Department (dept_no)
/


-- Building Table Create SQL
CREATE TABLE Building
(
    build_no      NUMBER           NOT NULL, 
    build_name    VARCHAR2(100)    NOT NULL, 
    build_addr    VARCHAR2(500)    NOT NULL, 
    build_post    VARCHAR2(50)     NOT NULL, 
    CONSTRAINT BUILDING_PK PRIMARY KEY (build_no)
)
/

CREATE SEQUENCE Building_SEQ
START WITH 100
INCREMENT BY 1;
/




COMMENT ON TABLE Building IS '�ǹ�'
/

COMMENT ON COLUMN Building.build_no IS '�ǹ���ȣ'
/

COMMENT ON COLUMN Building.build_name IS '�ǹ���'
/

COMMENT ON COLUMN Building.build_addr IS '�ּ�'
/

COMMENT ON COLUMN Building.build_post IS '�����ȣ'
/


-- Room Table Create SQL
CREATE TABLE Room
(
    room_no         NUMBER            NOT NULL, 
    build_no        NUMBER            NOT NULL, 
    room_name       VARCHAR2(50)      NOT NULL, 
    room_space      NUMBER            NOT NULL, 
    room_num_emp    NUMBER            NOT NULL, 
    mgr_emp_no      VARCHAR2(50)      NOT NULL, 
    room_img        VARCHAR2(1000)    NULL, 
    room_price      NUMBER            NOT NULL, 
    network_yn      CHAR(1)           NOT NULL, 
    room_floor      NUMBER            NOT NULL, 
    room_type       VARCHAR2(50)      NULL, 
    CONSTRAINT ROOM_PK PRIMARY KEY (room_no)
)
/

CREATE SEQUENCE Room_SEQ
START WITH 100
INCREMENT BY 1;
/






COMMENT ON TABLE Room IS '�뿩���(ȸ�ǽ�,������)'
/

COMMENT ON COLUMN Room.room_no IS 'ȸ�ǽǹ�ȣ'
/

COMMENT ON COLUMN Room.build_no IS '�ǹ���ȣ'
/

COMMENT ON COLUMN Room.room_name IS 'ȸ�ǽǸ�'
/

COMMENT ON COLUMN Room.room_space IS '�Ը�'
/

COMMENT ON COLUMN Room.room_num_emp IS '�����ο�'
/

COMMENT ON COLUMN Room.mgr_emp_no IS '����ڹ�ȣ'
/

COMMENT ON COLUMN Room.room_img IS 'ȸ�ǽǻ���'
/

COMMENT ON COLUMN Room.room_price IS '�ð�����'
/

COMMENT ON COLUMN Room.network_yn IS 'N/W��뿩��'
/

COMMENT ON COLUMN Room.room_floor IS 'ȸ�ǽ���ġ'
/

COMMENT ON COLUMN Room.room_type IS '�������'
/

ALTER TABLE Room
    ADD CONSTRAINT FK_Room_build_no_Building_buil FOREIGN KEY (build_no)
        REFERENCES Building (build_no)
/

ALTER TABLE Room
    ADD CONSTRAINT FK_Room_mgr_emp_no_Employee_em FOREIGN KEY (mgr_emp_no)
        REFERENCES Employee (emp_no)
/


-- Reserve_history Table Create SQL
CREATE TABLE Reserve_history
(
    reserve_no          NUMBER           NOT NULL, 
    room_no             NUMBER           NOT NULL, 
    reserve_emp_no      VARCHAR2(50)     NOT NULL, 
    start_date          DATE             NOT NULL, 
    end_date            DATE             NOT NULL, 
    approval1_yn        NUMBER           NOT NULL, 
    approval1_emp_no    VARCHAR2(50)     NULL, 
    approval1_date      DATE             NULL, 
    approval2_yn        NUMBER           NOT NULL, 
    approval2_emp_no    VARCHAR2(50)     NULL, 
    approval2_date      DATE             NULL, 
    payment_yn          NUMBER           NOT NULL, 
    payment_date        DATE             NULL, 
    reserve_date        DATE             NOT NULL, 
    reserve_price       NUMBER           NOT NULL, 
    purpose             VARCHAR2(300)    NOT NULL, 
    category            VARCHAR2(100)    NOT NULL, 
    priority            NUMBER           NOT NULL, 
    emp_count           NUMBER           NOT NULL, 
    snack_yn            CHAR(1)          NOT NULL, 
    CONSTRAINT RESERVE_HISTORY_PK PRIMARY KEY (reserve_no)
)
/

CREATE SEQUENCE Reserve_history_SEQ
START WITH 1000
INCREMENT BY 1;
/



COMMENT ON TABLE Reserve_history IS '���೻��'
/

COMMENT ON COLUMN Reserve_history.reserve_no IS '�����ȣ'
/

COMMENT ON COLUMN Reserve_history.room_no IS 'ȸ�ǽǹ�ȣ'
/

COMMENT ON COLUMN Reserve_history.reserve_emp_no IS '�����ڹ�ȣ'
/

COMMENT ON COLUMN Reserve_history.start_date IS '��������'
/

COMMENT ON COLUMN Reserve_history.end_date IS '���������'
/

COMMENT ON COLUMN Reserve_history.approval1_yn IS '1�����翩��'
/

COMMENT ON COLUMN Reserve_history.approval1_emp_no IS '1�������ڻ����ȣ'
/

COMMENT ON COLUMN Reserve_history.approval1_date IS '1��������'
/

COMMENT ON COLUMN Reserve_history.approval2_yn IS '2�����翩��'
/

COMMENT ON COLUMN Reserve_history.approval2_emp_no IS '2�������ڻ����ȣ'
/

COMMENT ON COLUMN Reserve_history.approval2_date IS '2��������'
/

COMMENT ON COLUMN Reserve_history.payment_yn IS '����������'
/

COMMENT ON COLUMN Reserve_history.payment_date IS '��������'
/

COMMENT ON COLUMN Reserve_history.reserve_date IS '�����û��'
/

COMMENT ON COLUMN Reserve_history.reserve_price IS '�����ݾ�'
/

COMMENT ON COLUMN Reserve_history.purpose IS 'ȸ�Ǹ���'
/

COMMENT ON COLUMN Reserve_history.category IS 'ȸ�Ǳ���'
/

COMMENT ON COLUMN Reserve_history.priority IS '�߿䵵'
/

COMMENT ON COLUMN Reserve_history.emp_count IS '�����ο���'
/

COMMENT ON COLUMN Reserve_history.snack_yn IS '�����غ񿩺�'
/

ALTER TABLE Reserve_history
    ADD CONSTRAINT FK_Reserve_history_room_no_Roo FOREIGN KEY (room_no)
        REFERENCES Room (room_no)
/

ALTER TABLE Reserve_history
    ADD CONSTRAINT FK_Reserve_history_reserve_emp FOREIGN KEY (reserve_emp_no)
        REFERENCES Employee (emp_no)
/


-- Room_Equipment Table Create SQL
CREATE TABLE Room_Equipment
(
    room_no     NUMBER          NOT NULL, 
    eq_no       NUMBER          NOT NULL, 
    eq_name     VARCHAR2(50)    NOT NULL, 
    eq_count    NUMBER          NOT NULL, 
    CONSTRAINT ROOM_EQUIPMENT_PK PRIMARY KEY (room_no, eq_no)
)
/

COMMENT ON TABLE Room_Equipment IS '�뿩���_��ǰ��Ȳ'
/

COMMENT ON COLUMN Room_Equipment.room_no IS 'ȸ�ǽǹ�ȣ'
/

COMMENT ON COLUMN Room_Equipment.eq_no IS '��ǰ��ȣ'
/

COMMENT ON COLUMN Room_Equipment.eq_name IS '��ǰ��'
/

COMMENT ON COLUMN Room_Equipment.eq_count IS '����'
/

ALTER TABLE Room_Equipment
    ADD CONSTRAINT FK_Room_Equipment_room_no_Room FOREIGN KEY (room_no)
        REFERENCES Room (room_no)
/


-- Notice Table Create SQL
CREATE TABLE Notice
(
    notice_no         NUMBER           NOT NULL, 
    notice_subject    VARCHAR2(100)    NOT NULL, 
    notice_content    VARCHAR2(500)    NOT NULL, 
    writer_emp_no     VARCHAR2(50)     NOT NULL, 
    notice_date       DATE             NOT NULL, 
    CONSTRAINT NOTICE_PK PRIMARY KEY (notice_no)
)
/

CREATE SEQUENCE Notice_SEQ
START WITH 100
INCREMENT BY 1;
/




COMMENT ON TABLE Notice IS '��������'
/

COMMENT ON COLUMN Notice.notice_no IS '�������׹�ȣ'
/

COMMENT ON COLUMN Notice.notice_subject IS '����'
/

COMMENT ON COLUMN Notice.notice_content IS '����'
/

COMMENT ON COLUMN Notice.writer_emp_no IS '�ۼ��ڻ����ȣ'
/

COMMENT ON COLUMN Notice.notice_date IS '�ۼ���'
/

ALTER TABLE Notice
    ADD CONSTRAINT FK_Notice_writer_emp_no_Employ FOREIGN KEY (writer_emp_no)
        REFERENCES Employee (emp_no)
/


-- Meeting_member_list Table Create SQL
CREATE TABLE Meeting_member_list
(
    reserve_no    NUMBER          NOT NULL, 
    emp_no        VARCHAR2(50)    NOT NULL, 
    dept_name     VARCHAR2(50)    NULL, 
    CONSTRAINT MEETING_MEMBER_LIST_PK PRIMARY KEY (reserve_no, emp_no)
)
/

COMMENT ON TABLE Meeting_member_list IS 'ȸ�Ǻ������ڸ��'
/

COMMENT ON COLUMN Meeting_member_list.reserve_no IS '�����ȣ'
/

COMMENT ON COLUMN Meeting_member_list.emp_no IS '�����ȣ'
/

COMMENT ON COLUMN Meeting_member_list.dept_name IS '�μ���'
/

ALTER TABLE Meeting_member_list
    ADD CONSTRAINT FK_Meeting_member_list_reserve FOREIGN KEY (reserve_no)
        REFERENCES Reserve_history (reserve_no)
/

ALTER TABLE Meeting_member_list
    ADD CONSTRAINT FK_Meeting_member_list_emp_no_ FOREIGN KEY (emp_no)
        REFERENCES Employee (emp_no)
/


-- Meeting_Equipment_list Table Create SQL
CREATE TABLE Meeting_Equipment_list
(
    reserve_no    NUMBER    NOT NULL, 
    eq_no         NUMBER    NOT NULL, 
    eq_count      NUMBER    NOT NULL
)
/

COMMENT ON TABLE Meeting_Equipment_list IS 'ȸ�Ǻ���ǰ��볻��'
/

COMMENT ON COLUMN Meeting_Equipment_list.reserve_no IS '�����ȣ'
/

COMMENT ON COLUMN Meeting_Equipment_list.eq_no IS '��ǰ��ȣ'
/

COMMENT ON COLUMN Meeting_Equipment_list.eq_count IS '����'
/

ALTER TABLE Meeting_Equipment_list
    ADD CONSTRAINT FK_Meeting_Equipment_list_rese FOREIGN KEY (reserve_no)
        REFERENCES Reserve_history (reserve_no)
/


-- Dept_payment Table Create SQL
CREATE TABLE Dept_payment
(
    reserve_no            NUMBER     NOT NULL, 
    dept_no               NUMBER     NOT NULL, 
    dept_reserve_price    NUMBER     NOT NULL, 
    dept_payment_yn       CHAR(1)    NOT NULL, 
    CONSTRAINT DEPT_PAYMENT_PK PRIMARY KEY (reserve_no, dept_no)
)
/

COMMENT ON TABLE Dept_payment IS '�μ������'
/

COMMENT ON COLUMN Dept_payment.reserve_no IS '�����ȣ'
/

COMMENT ON COLUMN Dept_payment.dept_no IS '�μ���ȣ'
/

COMMENT ON COLUMN Dept_payment.dept_reserve_price IS '�����ݾ�'
/

COMMENT ON COLUMN Dept_payment.dept_payment_yn IS '����������'
/

ALTER TABLE Dept_payment
    ADD CONSTRAINT FK_Dept_payment_reserve_no_Res FOREIGN KEY (reserve_no)
        REFERENCES Reserve_history (reserve_no)
/
