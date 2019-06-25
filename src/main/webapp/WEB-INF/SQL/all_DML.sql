--DEPARTMENT 더미----------------------------------------------------------------------------------------------------
Insert into MBMS.DEPARTMENT (DEPT_NO,DEPT_NAME,BOSS_NO,MGR_DEPT_NO) values (0,'GSITM','CEO',NULL);
Insert into MBMS.DEPARTMENT (DEPT_NO,DEPT_NAME,BOSS_NO,MGR_DEPT_NO) values (10,'SI사업부','it1010',NULL);
Insert into MBMS.DEPARTMENT (DEPT_NO,DEPT_NAME,BOSS_NO,MGR_DEPT_NO) values (11,'ICT사업팀','it1011',NULL);
Insert into MBMS.DEPARTMENT (DEPT_NO,DEPT_NAME,BOSS_NO,MGR_DEPT_NO) values (12,'SI사업팀','it1012',NULL);
Insert into MBMS.DEPARTMENT (DEPT_NO,DEPT_NAME,BOSS_NO,MGR_DEPT_NO) values (13,'Commerce파트','it1013',NULL);
Insert into MBMS.DEPARTMENT (DEPT_NO,DEPT_NAME,BOSS_NO,MGR_DEPT_NO) values (14,'CRM파트','it1014',NULL);
Insert into MBMS.DEPARTMENT (DEPT_NO,DEPT_NAME,BOSS_NO,MGR_DEPT_NO) values (15,'데이터사업파트','it1015',NULL);
Insert into MBMS.DEPARTMENT (DEPT_NO,DEPT_NAME,BOSS_NO,MGR_DEPT_NO) values (16,'유통/물류파트','it1016',NULL);


UPDATE MBMS.DEPARTMENT SET MGR_DEPT_NO = 0 WHERE DEPT_NO = 10;
UPDATE MBMS.DEPARTMENT SET MGR_DEPT_NO = 10 WHERE DEPT_NO = 11;
UPDATE MBMS.DEPARTMENT SET MGR_DEPT_NO = 10 WHERE DEPT_NO = 12;
UPDATE MBMS.DEPARTMENT SET MGR_DEPT_NO = 12 WHERE DEPT_NO = 13;
UPDATE MBMS.DEPARTMENT SET MGR_DEPT_NO = 12 WHERE DEPT_NO = 14;
UPDATE MBMS.DEPARTMENT SET MGR_DEPT_NO = 12 WHERE DEPT_NO = 15;
UPDATE MBMS.DEPARTMENT SET MGR_DEPT_NO = 12 WHERE DEPT_NO = 16;
UPDATE MBMS.DEPARTMENT SET MGR_DEPT_NO = 0 WHERE DEPT_NO = 0;


--EMPLOYEE 더미----------------------------------------------------------------------------------------------------
Insert into MBMS.EMPLOYEE (EMP_NO,EMP_PW,EMP_NAME,EMP_POSITION,EMP_EMAIL,CELL_PHONE,OFFICE_PHONE,DEPT_NO) values ('it1010','1q2w3e4r!@','송기민','상무','park@gsitm.com','010-2932-1231','02-230-9987',10);
Insert into MBMS.EMPLOYEE (EMP_NO,EMP_PW,EMP_NAME,EMP_POSITION,EMP_EMAIL,CELL_PHONE,OFFICE_PHONE,DEPT_NO) values ('it1011','1q2w3e4r!@','조윤성','이사','kim@gsitm.com','010-9932-1231','02-230-9987',11);
Insert into MBMS.EMPLOYEE (EMP_NO,EMP_PW,EMP_NAME,EMP_POSITION,EMP_EMAIL,CELL_PHONE,OFFICE_PHONE,DEPT_NO) values ('it1012','1q2w3e4r!@','이현주','이사','gill@gsitm.com','010-7732-1231','02-230-9987',12);
Insert into MBMS.EMPLOYEE (EMP_NO,EMP_PW,EMP_NAME,EMP_POSITION,EMP_EMAIL,CELL_PHONE,OFFICE_PHONE,DEPT_NO) values ('it1013','1q2w3e4r!@','김빈원','부장','yulll@gsitm.com','010-1132-1231','02-230-9987',13);
Insert into MBMS.EMPLOYEE (EMP_NO,EMP_PW,EMP_NAME,EMP_POSITION,EMP_EMAIL,CELL_PHONE,OFFICE_PHONE,DEPT_NO) values ('it1014','1q2w3e4r!@','김윤나','부장','yooon@gsitm.com','010-3232-1231','02-230-9987',14);
Insert into MBMS.EMPLOYEE (EMP_NO,EMP_PW,EMP_NAME,EMP_POSITION,EMP_EMAIL,CELL_PHONE,OFFICE_PHONE,DEPT_NO) values ('it1015','1q2w3e4r!@','박문길','부장','choo@gsitm.com','010-9032-1231','02-230-9987',15);
Insert into MBMS.EMPLOYEE (EMP_NO,EMP_PW,EMP_NAME,EMP_POSITION,EMP_EMAIL,CELL_PHONE,OFFICE_PHONE,DEPT_NO) values ('it1016','1q2w3e4r!@','김율재','부장','binnn@gsitm.com','010-7632-1231','02-230-9987',16);
Insert into MBMS.EMPLOYEE (EMP_NO,EMP_PW,EMP_NAME,EMP_POSITION,EMP_EMAIL,CELL_PHONE,OFFICE_PHONE,DEPT_NO) values ('it1017','1q2w3e4r!@','박영수','차장','parkbin@gsitm.com','010-7632-1231','02-230-9987',16);
Insert into MBMS.EMPLOYEE (EMP_NO,EMP_PW,EMP_NAME,EMP_POSITION,EMP_EMAIL,CELL_PHONE,OFFICE_PHONE,DEPT_NO) values ('it1018','1q2w3e4r!@','김영호','과장','parkbin@gsitm.com','010-7632-1231','02-230-9987',16);
Insert into MBMS.EMPLOYEE (EMP_NO,EMP_PW,EMP_NAME,EMP_POSITION,EMP_EMAIL,CELL_PHONE,OFFICE_PHONE,DEPT_NO) values ('it1019','1q2w3e4r!@','윤정웅','대리','woong@gsitm.com','010-1332-0031','02-230-9987',16);
Insert into MBMS.EMPLOYEE (EMP_NO,EMP_PW,EMP_NAME,EMP_POSITION,EMP_EMAIL,CELL_PHONE,OFFICE_PHONE,DEPT_NO) values ('it1020','1q2w3e4r!@','윤정남','사원','namm@gsitm.com','010-1332-0031','02-230-9987',16);
Insert into MBMS.EMPLOYEE (EMP_NO,EMP_PW,EMP_NAME,EMP_POSITION,EMP_EMAIL,CELL_PHONE,OFFICE_PHONE,DEPT_NO) values ('it1021','1q2w3e4r!@','박광수','사원','gsoooo@gsitm.com','010-1999-0031','02-230-9987',16);
Insert into MBMS.EMPLOYEE (EMP_NO,EMP_PW,EMP_NAME,EMP_POSITION,EMP_EMAIL,CELL_PHONE,OFFICE_PHONE,DEPT_NO) values ('it1022','1q2w3e4r!@','김영길','차장','young@gsitm.com','010-2199-0031','02-230-9987',15);
Insert into MBMS.EMPLOYEE (EMP_NO,EMP_PW,EMP_NAME,EMP_POSITION,EMP_EMAIL,CELL_PHONE,OFFICE_PHONE,DEPT_NO) values ('it1023','1q2w3e4r!@','윤정남','과장','jnam@gsitm.com','010-5699-0031','02-230-9987',15);
Insert into MBMS.EMPLOYEE (EMP_NO,EMP_PW,EMP_NAME,EMP_POSITION,EMP_EMAIL,CELL_PHONE,OFFICE_PHONE,DEPT_NO) values ('it1024','1q2w3e4r!@','최정식','대리','sikkk@gsitm.com','010-5699-0031','02-230-9987',15);
Insert into MBMS.EMPLOYEE (EMP_NO,EMP_PW,EMP_NAME,EMP_POSITION,EMP_EMAIL,CELL_PHONE,OFFICE_PHONE,DEPT_NO) values ('it1025','1q2w3e4r!@','최영환','대리','sikkk@gsitm.com','010-8909-0031','02-230-9987',15);
Insert into MBMS.EMPLOYEE (EMP_NO,EMP_PW,EMP_NAME,EMP_POSITION,EMP_EMAIL,CELL_PHONE,OFFICE_PHONE,DEPT_NO) values ('it1026','1q2w3e4r!@','박영호','사원','hooow@gsitm.com','010-8909-0031','02-230-9987',15);
Insert into MBMS.EMPLOYEE (EMP_NO,EMP_PW,EMP_NAME,EMP_POSITION,EMP_EMAIL,CELL_PHONE,OFFICE_PHONE,DEPT_NO) values ('it1027','1q2w3e4r!@','김중수','사원','sooo@gsitm.com','010-8009-9031','02-230-9987',15);
Insert into MBMS.EMPLOYEE (EMP_NO,EMP_PW,EMP_NAME,EMP_POSITION,EMP_EMAIL,CELL_PHONE,OFFICE_PHONE,DEPT_NO) values ('it1028','1q2w3e4r!@','김영철','차장','youngch@gsitm.com','010-8009-9031','02-230-9987',14);
Insert into MBMS.EMPLOYEE (EMP_NO,EMP_PW,EMP_NAME,EMP_POSITION,EMP_EMAIL,CELL_PHONE,OFFICE_PHONE,DEPT_NO) values ('it1029','1q2w3e4r!@','윤지은','대리','eun@gsitm.com','010-8009-9031','02-230-9987',14);
Insert into MBMS.EMPLOYEE (EMP_NO,EMP_PW,EMP_NAME,EMP_POSITION,EMP_EMAIL,CELL_PHONE,OFFICE_PHONE,DEPT_NO) values ('it1030','1q2w3e4r!@','박정연','사원','yeon@gsitm.com','010-6663-9031','02-230-9987',14);
Insert into MBMS.EMPLOYEE (EMP_NO,EMP_PW,EMP_NAME,EMP_POSITION,EMP_EMAIL,CELL_PHONE,OFFICE_PHONE,DEPT_NO) values ('it1031','1q2w3e4r!@','김진우','사원','jwoo@gsitm.com','010-5363-9031','02-230-9987',14);
Insert into MBMS.EMPLOYEE (EMP_NO,EMP_PW,EMP_NAME,EMP_POSITION,EMP_EMAIL,CELL_PHONE,OFFICE_PHONE,DEPT_NO) values ('it1032','1q2w3e4r!@','박성호','차장','sho@gsitm.com','010-6663-9031','02-230-9987',13);
Insert into MBMS.EMPLOYEE (EMP_NO,EMP_PW,EMP_NAME,EMP_POSITION,EMP_EMAIL,CELL_PHONE,OFFICE_PHONE,DEPT_NO) values ('it1033','1q2w3e4r!@','김영진','과장','jinn@gsitm.com','010-6663-9031','02-230-9987',13);
Insert into MBMS.EMPLOYEE (EMP_NO,EMP_PW,EMP_NAME,EMP_POSITION,EMP_EMAIL,CELL_PHONE,OFFICE_PHONE,DEPT_NO) values ('it1034','1q2w3e4r!@','윤성진','대리','jinniii@gsitm.com','010-6663-9031','02-230-9987',13);
Insert into MBMS.EMPLOYEE (EMP_NO,EMP_PW,EMP_NAME,EMP_POSITION,EMP_EMAIL,CELL_PHONE,OFFICE_PHONE,DEPT_NO) values ('it1035','1q2w3e4r!@','김성수','대리','sssoooo@gsitm.com','010-6663-9031','02-230-9987',13);
Insert into MBMS.EMPLOYEE (EMP_NO,EMP_PW,EMP_NAME,EMP_POSITION,EMP_EMAIL,CELL_PHONE,OFFICE_PHONE,DEPT_NO) values ('it1036','1q2w3e4r!@','김재호','사원','jhoho@gsitm.com','010-6663-9031','02-230-9987',13);
Insert into MBMS.EMPLOYEE (EMP_NO,EMP_PW,EMP_NAME,EMP_POSITION,EMP_EMAIL,CELL_PHONE,OFFICE_PHONE,DEPT_NO) values ('it1037','1q2w3e4r!@','김민재','대리','jaejae@gsitm.com','010-1563-9031','02-230-9987',12);
Insert into MBMS.EMPLOYEE (EMP_NO,EMP_PW,EMP_NAME,EMP_POSITION,EMP_EMAIL,CELL_PHONE,OFFICE_PHONE,DEPT_NO) values ('it1038','1q2w3e4r!@','김준호','대리','jaejae@gsitm.com','010-1563-9031','02-230-9987',11);
Insert into MBMS.EMPLOYEE (EMP_NO,EMP_PW,EMP_NAME,EMP_POSITION,EMP_EMAIL,CELL_PHONE,OFFICE_PHONE,DEPT_NO) values ('it1039','1q2w3e4r!@','김민우','대리','mwmw@gsitm.com','010-1563-9031','02-230-9987',10);
Insert into MBMS.EMPLOYEE (EMP_NO,EMP_PW,EMP_NAME,EMP_POSITION,EMP_EMAIL,CELL_PHONE,OFFICE_PHONE,DEPT_NO) values ('it1235','1q2w3e4r!@','조성윤','사원','whtjddbs@gsitm.com','010-1563-9031','02-230-9987',10);


--NOTICE 더미----------------------------------------------------------------------------------------------------
Insert into MBMS.NOTICE (notice_no, notice_subject, notice_content, writer_emp_no, notice_date) values (Notice_SEQ.NEXTVAL, '공지제목1', '공지내용내용내용내용', 'it1010', TO_DATE('2019-03-23 16:04:56','YYYY-MM-DD HH24:MI:SS'));
Insert into MBMS.NOTICE (notice_no, notice_subject, notice_content, writer_emp_no, notice_date) values (Notice_SEQ.NEXTVAL, '공지제목2', '공지내용내용내용내용', 'it1010', TO_DATE('2019-03-24 16:04:56','YYYY-MM-DD HH24:MI:SS'));
Insert into MBMS.NOTICE (notice_no, notice_subject, notice_content, writer_emp_no, notice_date) values (Notice_SEQ.NEXTVAL, '공지제목3', '공지내용내용내용내용', 'it1010', TO_DATE('2019-03-25 16:04:56','YYYY-MM-DD HH24:MI:SS'));
Insert into MBMS.NOTICE (notice_no, notice_subject, notice_content, writer_emp_no, notice_date) values (Notice_SEQ.NEXTVAL, '공지제목4', '공지내용내용내용내용', 'it1010', TO_DATE('2019-03-26 16:04:56','YYYY-MM-DD HH24:MI:SS'));
Insert into MBMS.NOTICE (notice_no, notice_subject, notice_content, writer_emp_no, notice_date) values (Notice_SEQ.NEXTVAL, '공지제목5', '공지내용내용내용내용', 'it1010', TO_DATE('2019-03-27 16:04:56','YYYY-MM-DD HH24:MI:SS'));
Insert into MBMS.NOTICE (notice_no, notice_subject, notice_content, writer_emp_no, notice_date) values (Notice_SEQ.NEXTVAL, '공지제목6', '공지내용내용내용내용', 'it1010', TO_DATE('2019-03-28 16:04:56','YYYY-MM-DD HH24:MI:SS'));
Insert into MBMS.NOTICE (notice_no, notice_subject, notice_content, writer_emp_no, notice_date) values (Notice_SEQ.NEXTVAL, '공지제목7', '공지내용내용내용내용', 'it1010', TO_DATE('2019-03-29 16:04:56','YYYY-MM-DD HH24:MI:SS'));
Insert into MBMS.NOTICE (notice_no, notice_subject, notice_content, writer_emp_no, notice_date) values (Notice_SEQ.NEXTVAL, '공지제목8', '공지내용내용내용내용', 'it1010', TO_DATE('2019-03-30 16:04:56','YYYY-MM-DD HH24:MI:SS'));
Insert into MBMS.NOTICE (notice_no, notice_subject, notice_content, writer_emp_no, notice_date) values (Notice_SEQ.NEXTVAL, '공지제목9', '공지내용내용내용내용', 'it1010', TO_DATE('2019-04-01 16:04:56','YYYY-MM-DD HH24:MI:SS'));
Insert into MBMS.NOTICE (notice_no, notice_subject, notice_content, writer_emp_no, notice_date) values (Notice_SEQ.NEXTVAL, '공지제목0', '공지내용내용내용내용', 'it1010', TO_DATE('2019-04-02 16:04:56','YYYY-MM-DD HH24:MI:SS'));
Insert into MBMS.NOTICE (notice_no, notice_subject, notice_content, writer_emp_no, notice_date) values (Notice_SEQ.NEXTVAL, '공지제목1', '공지내용내용내용내용', 'it1010', TO_DATE('2019-04-03 16:04:56','YYYY-MM-DD HH24:MI:SS'));
Insert into MBMS.NOTICE (notice_no, notice_subject, notice_content, writer_emp_no, notice_date) values (Notice_SEQ.NEXTVAL, '공지제목2', '공지내용내용내용내용', 'it1010', TO_DATE('2019-04-04 16:04:56','YYYY-MM-DD HH24:MI:SS'));
Insert into MBMS.NOTICE (notice_no, notice_subject, notice_content, writer_emp_no, notice_date) values (Notice_SEQ.NEXTVAL, '공지제목3', '공지내용내용내용내용', 'it1010', TO_DATE('2019-04-05 16:04:56','YYYY-MM-DD HH24:MI:SS'));
Insert into MBMS.NOTICE (notice_no, notice_subject, notice_content, writer_emp_no, notice_date) values (Notice_SEQ.NEXTVAL, '공지제목4', '공지내용내용내용내용', 'it1010', TO_DATE('2019-04-06 16:04:56','YYYY-MM-DD HH24:MI:SS'));
Insert into MBMS.NOTICE (notice_no, notice_subject, notice_content, writer_emp_no, notice_date) values (Notice_SEQ.NEXTVAL, '공지제목5', '공지내용내용내용내용', 'it1010', TO_DATE('2019-04-07 16:04:56','YYYY-MM-DD HH24:MI:SS'));
Insert into MBMS.NOTICE (notice_no, notice_subject, notice_content, writer_emp_no, notice_date) values (Notice_SEQ.NEXTVAL, '공지제목6', '공지내용내용내용내용', 'it1010', TO_DATE('2019-04-08 16:04:56','YYYY-MM-DD HH24:MI:SS'));
Insert into MBMS.NOTICE (notice_no, notice_subject, notice_content, writer_emp_no, notice_date) values (Notice_SEQ.NEXTVAL, '공지제목7', '공지내용내용내용내용', 'it1010', TO_DATE('2019-04-09 16:04:56','YYYY-MM-DD HH24:MI:SS'));
Insert into MBMS.NOTICE (notice_no, notice_subject, notice_content, writer_emp_no, notice_date) values (Notice_SEQ.NEXTVAL, '공지제목8', '공지내용내용내용내용', 'it1010', TO_DATE('2019-04-10 16:04:56','YYYY-MM-DD HH24:MI:SS'));
Insert into MBMS.NOTICE (notice_no, notice_subject, notice_content, writer_emp_no, notice_date) values (Notice_SEQ.NEXTVAL, '공지제목9', '공지내용내용내용내용', 'it1010', TO_DATE('2019-04-11 16:04:56','YYYY-MM-DD HH24:MI:SS'));
Insert into MBMS.NOTICE (notice_no, notice_subject, notice_content, writer_emp_no, notice_date) values (Notice_SEQ.NEXTVAL, '공지제목0', '공지내용내용내용내용', 'it1010', TO_DATE('2019-04-12 16:04:56','YYYY-MM-DD HH24:MI:SS'));
Insert into MBMS.NOTICE (notice_no, notice_subject, notice_content, writer_emp_no, notice_date) values (Notice_SEQ.NEXTVAL, '공지제목1', '공지내용내용내용내용', 'it1010', TO_DATE('2019-04-13 16:04:56','YYYY-MM-DD HH24:MI:SS'));
Insert into MBMS.NOTICE (notice_no, notice_subject, notice_content, writer_emp_no, notice_date) values (Notice_SEQ.NEXTVAL, '공지제목2', '공지내용내용내용내용', 'it1010', TO_DATE('2019-04-14 16:04:56','YYYY-MM-DD HH24:MI:SS'));
Insert into MBMS.NOTICE (notice_no, notice_subject, notice_content, writer_emp_no, notice_date) values (Notice_SEQ.NEXTVAL, '공지제목3', '공지내용내용내용내용', 'it1010', TO_DATE('2019-04-15 16:04:56','YYYY-MM-DD HH24:MI:SS'));
Insert into MBMS.NOTICE (notice_no, notice_subject, notice_content, writer_emp_no, notice_date) values (Notice_SEQ.NEXTVAL, '공지제목4', '공지내용내용내용내용', 'it1010', SYSDATE);


--BUILDING 더미----------------------------------------------------------------------------------------------------
-- 건물번호, 건물명, 주소, 우편번호
INSERT INTO building VALUES (Building_SEQ.NEXTVAL, '보헌빌딩', '서울특별시 종로구 계동길 31', '03059');
INSERT INTO building VALUES (Building_SEQ.NEXTVAL, '삼환빌딩', '서울특별시 종로구 율곡로 88', '03131');
INSERT INTO building VALUES (Building_SEQ.NEXTVAL, 'GS강남타워', '서울특별시 강남구 논현로 508', '06141');
INSERT INTO building VALUES (Building_SEQ.NEXTVAL, 'GS강서타워', '서울특별시 영등포구 선유로 75', '07280');

--ROOM 더미----------------------------------------------------------------------------------------------------
-- 회의실번호, 건물번호, 회의실이름, 회의실규모, 수용인원, 담당자번호, 회의실사진, 가격, 네트워크유무, 층수, 회의실구분
INSERT INTO room VALUES (Room_SEQ.NEXTVAL, 101, '교육장1', '200', '50', 'it1011', '/resources/img/room/room001.jpg', 10000, 'Y', 1, '교육실');
INSERT INTO room VALUES (Room_SEQ.NEXTVAL, 101, '교육장2', '200', '50', 'it1012', '/resources/img/room/room002.jpg', 10000, 'Y', 1, '교육실');
INSERT INTO room VALUES (Room_SEQ.NEXTVAL, 101, '몰디브', '200', '50', 'it1011', '/resources/img/room/room001.jpg', 10000, 'Y', 1, '회의실');
INSERT INTO room VALUES (Room_SEQ.NEXTVAL, 102, '교육실1', '200', '50', 'it1011', '/resources/img/room/room001.jpg', 10000, 'Y', 1, '교육실');
INSERT INTO room VALUES (Room_SEQ.NEXTVAL, 102, '교육실2', '200', '50', 'it1012', '/resources/img/room/room002.jpg', 10000, 'Y', 1, '교육실');
INSERT INTO room VALUES (Room_SEQ.NEXTVAL, 102, '회의실1', '200', '50', 'it1011', '/resources/img/room/room001.jpg', 10000, 'Y', 1, '회의실');
INSERT INTO room VALUES (Room_SEQ.NEXTVAL, 103, '교육장3', '200', '50', 'it1011', '/resources/img/room/room001.jpg', 10000, 'Y', 1, '교육실');
INSERT INTO room VALUES (Room_SEQ.NEXTVAL, 103, '교육장4', '200', '50', 'it1012', '/resources/img/room/room002.jpg', 10000, 'Y', 1, '교육실');
INSERT INTO room VALUES (Room_SEQ.NEXTVAL, 103, '몰디브2', '200', '50', 'it1011', '/resources/img/room/room001.jpg', 10000, 'Y', 1, '회의실');
INSERT INTO room VALUES (Room_SEQ.NEXTVAL, 104, '교육장5', '200', '50', 'it1011', '/resources/img/room/room001.jpg', 10000, 'Y', 1, '교육실');
INSERT INTO room VALUES (Room_SEQ.NEXTVAL, 104, '교육장6', '200', '50', 'it1012', '/resources/img/room/room002.jpg', 10000, 'Y', 1, '교육실');
INSERT INTO room VALUES (Room_SEQ.NEXTVAL, 104, '교육실2', '200', '50', 'it1011', '/resources/img/room/room001.jpg', 10000, 'Y', 1, '회의실');

--RESERVE_HISTORY 더미----------------------------------------------------------------------------------------------------
INSERT INTO Reserve_history VALUES(RESERVE_HISTORY_SEQ.nextval, 101, 'it1235', TO_DATE('2019-05-05 13:00', 'yyyy-MM-dd HH24:mi'), TO_DATE('2019-05-05 15:00', 'yyyy-MM-dd HH24:mi'),    0, 'it1010', null, 0, 'it1010', null, 0, null, sysdate, 20000, '백엔드 개발자 증원 목적', '면접', 5, 7, 'N',null,'백엔드 개발자 면접');
INSERT INTO Reserve_history VALUES(RESERVE_HISTORY_SEQ.nextval, 101, 'it1235', TO_DATE('2019-05-06 16:00', 'yyyy-MM-dd HH24:mi'), TO_DATE('2019-05-06 18:00', 'yyyy-MM-dd HH24:mi'),    0, 'it1010', null, 0, 'it1010', null, 0, null, sysdate, 20000, '프론트엔드 개발자 증원 목적', '면접', 5, 7, 'N','일정 중복으로 인한 반려','프론트엔드 개발자 면접');
INSERT INTO Reserve_history VALUES(RESERVE_HISTORY_SEQ.nextval, 101, 'it1235', TO_DATE('2019-05-07 09:00', 'yyyy-MM-dd HH24:mi'), TO_DATE('2019-05-08 18:00', 'yyyy-MM-dd HH24:mi'),    0, 'it1010', null, 0, 'it1010', null, 0, null, sysdate, 20000, '인프라 개발자 증원 목적', '면접', 5, 7, 'N','일정 중복으로 인한 반려','인프라 개발자 면접');
INSERT INTO RESERVE_HISTORY VALUES (RESERVE_HISTORY_SEQ.nextval, 101, 'it1026', TO_DATE('2019-06-01 09:46:34', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2019-06-02 09:46:40', 'YYYY-MM-DD HH24:MI:SS'), '1', 'it1025', TO_DATE('2019-06-19 09:47:17', 'YYYY-MM-DD HH24:MI:SS'), '1', 'it1023', TO_DATE('2019-06-19 09:49:27', 'YYYY-MM-DD HH24:MI:SS'), '1', TO_DATE('2019-06-20 09:49:44', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2019-06-19 09:49:59', 'YYYY-MM-DD HH24:MI:SS'), '80000', '경영 관련 설명회', '내부회의', '1', '5', 'Y', null, '리더그룹 설명회');
INSERT INTO RESERVE_HISTORY VALUES (RESERVE_HISTORY_SEQ.nextval, 101, 'it1026', TO_DATE('2019-06-04 09:46:34', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2019-06-16 09:46:40', 'YYYY-MM-DD HH24:MI:SS'), '1', 'it1025', TO_DATE('2019-06-19 09:47:17', 'YYYY-MM-DD HH24:MI:SS'), '1', 'it1023', TO_DATE('2019-06-19 09:49:27', 'YYYY-MM-DD HH24:MI:SS'), '1', TO_DATE('2019-06-20 09:49:44', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2019-06-19 09:49:59', 'YYYY-MM-DD HH24:MI:SS'), '310000', '언어 관련 설명회', '내부회의', '1', '5', 'Y', null, 'JAVA 관련 설명회');
INSERT INTO RESERVE_HISTORY VALUES (RESERVE_HISTORY_SEQ.nextval, 104, 'it1029', TO_DATE('2019-06-07 09:46:34', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2019-06-19 09:46:40', 'YYYY-MM-DD HH24:MI:SS'), '1', 'it1025', TO_DATE('2019-06-19 09:47:17', 'YYYY-MM-DD HH24:MI:SS'), '1', 'it1023', TO_DATE('2019-06-19 09:49:27', 'YYYY-MM-DD HH24:MI:SS'), '1', TO_DATE('2019-06-20 09:49:44', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2019-06-19 09:49:59', 'YYYY-MM-DD HH24:MI:SS'), '320000', '언어 관련 설명회', '내부회의', '1', '5', 'Y', null, 'C 관련 설명회');
INSERT INTO RESERVE_HISTORY VALUES (RESERVE_HISTORY_SEQ.nextval, 107, 'it1032', TO_DATE('2019-06-10 09:46:34', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2019-06-22 09:46:40', 'YYYY-MM-DD HH24:MI:SS'), '1', 'it1025', TO_DATE('2019-06-19 09:47:17', 'YYYY-MM-DD HH24:MI:SS'), '1', 'it1023', TO_DATE('2019-06-19 09:49:27', 'YYYY-MM-DD HH24:MI:SS'), '1', TO_DATE('2019-06-20 09:49:44', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2019-06-19 09:49:59', 'YYYY-MM-DD HH24:MI:SS'), '330000', '언어 관련 설명회', '내부회의', '1', '5', 'Y', null, 'PYTHON 관련 설명회');
INSERT INTO RESERVE_HISTORY VALUES (RESERVE_HISTORY_SEQ.nextval, 110, 'it1035', TO_DATE('2019-06-13 09:46:34', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2019-06-25 09:46:40', 'YYYY-MM-DD HH24:MI:SS'), '1', 'it1025', TO_DATE('2019-06-19 09:47:17', 'YYYY-MM-DD HH24:MI:SS'), '1', 'it1023', TO_DATE('2019-06-19 09:49:27', 'YYYY-MM-DD HH24:MI:SS'), '1', TO_DATE('2019-06-20 09:49:44', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2019-06-19 09:49:59', 'YYYY-MM-DD HH24:MI:SS'), '340000', '언어 관련 설명회', '내부회의', '1', '5', 'Y', null, 'RUBY 관련 설명회');
INSERT INTO RESERVE_HISTORY VALUES (RESERVE_HISTORY_SEQ.nextval, 102, 'it1026', TO_DATE('2019-06-02 09:46:34', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2019-06-03 09:46:40', 'YYYY-MM-DD HH24:MI:SS'), '1', 'it1025', TO_DATE('2019-06-19 09:47:17', 'YYYY-MM-DD HH24:MI:SS'), '0', 'it1023', null, '0', null, TO_DATE('2019-06-19 09:49:59', 'YYYY-MM-DD HH24:MI:SS'), '60000', '신입사원 역량 향상 교육', '내부교육', '2', '6', 'N', null, '신입인성교육');
INSERT INTO RESERVE_HISTORY VALUES (RESERVE_HISTORY_SEQ.nextval, 102, 'it1027', TO_DATE('2019-06-05 09:46:34', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2019-06-17 09:46:40', 'YYYY-MM-DD HH24:MI:SS'), '1', 'it1025', TO_DATE('2019-06-19 09:47:17', 'YYYY-MM-DD HH24:MI:SS'), '0', 'it1023', null, '0', null, TO_DATE('2019-06-19 09:49:59', 'YYYY-MM-DD HH24:MI:SS'), '60000', 'DB교육', '내부교육', '2', '6', 'N', null, '신입코딩교육1');
INSERT INTO RESERVE_HISTORY VALUES (RESERVE_HISTORY_SEQ.nextval, 105, 'it1030', TO_DATE('2019-06-08 09:46:34', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2019-06-20 09:46:40', 'YYYY-MM-DD HH24:MI:SS'), '1', 'it1025', TO_DATE('2019-06-19 09:47:17', 'YYYY-MM-DD HH24:MI:SS'), '0', 'it1023', null, '0', null, TO_DATE('2019-06-19 09:49:59', 'YYYY-MM-DD HH24:MI:SS'), '60000', '프론트엔드교육', '내부교육', '2', '6', 'N', null, '신입코딩교육2');
INSERT INTO RESERVE_HISTORY VALUES (RESERVE_HISTORY_SEQ.nextval, 108, 'it1033', TO_DATE('2019-06-11 09:46:34', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2019-06-23 09:46:40', 'YYYY-MM-DD HH24:MI:SS'), '1', 'it1025', TO_DATE('2019-06-19 09:47:17', 'YYYY-MM-DD HH24:MI:SS'), '0', 'it1023', null, '0', null, TO_DATE('2019-06-19 09:49:59', 'YYYY-MM-DD HH24:MI:SS'), '60000', '안드로이드교육', '내부교육', '2', '6', 'N', null, '신입코딩교육3');
INSERT INTO RESERVE_HISTORY VALUES (RESERVE_HISTORY_SEQ.nextval, 111, 'it1036', TO_DATE('2019-06-14 09:46:34', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2019-06-26 09:46:40', 'YYYY-MM-DD HH24:MI:SS'), '1', 'it1025', TO_DATE('2019-06-19 09:47:17', 'YYYY-MM-DD HH24:MI:SS'), '0', 'it1023', null, '0', null, TO_DATE('2019-06-19 09:49:59', 'YYYY-MM-DD HH24:MI:SS'), '60000', '스프링교육', '내부교육', '2', '6', 'N', null, '신입코딩교육4');
INSERT INTO RESERVE_HISTORY VALUES (RESERVE_HISTORY_SEQ.nextval, 101, 'it1026', TO_DATE('2019-06-03 09:46:34', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2019-06-04 09:46:40', 'YYYY-MM-DD HH24:MI:SS'), '0', 'it1025', null, '0', 'it1023', null, '0', null, TO_DATE('2019-06-19 09:49:59', 'YYYY-MM-DD HH24:MI:SS'), '70000', 'Redhat 소개', '외부교육', '3', '4', 'Y', null, 'Redhat 신기술세미나');
INSERT INTO RESERVE_HISTORY VALUES (RESERVE_HISTORY_SEQ.nextval, 103, 'it1028', TO_DATE('2019-06-06 09:46:34', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2019-06-18 09:46:40', 'YYYY-MM-DD HH24:MI:SS'), '0', 'it1025', null, '0', 'it1023', null, '0', null, TO_DATE('2019-06-19 09:49:59', 'YYYY-MM-DD HH24:MI:SS'), '70000', '스프링 소개', '외부교육', '3', '4', 'Y', null, '스프링 신기술 세미나');
INSERT INTO RESERVE_HISTORY VALUES (RESERVE_HISTORY_SEQ.nextval, 106, 'it1031', TO_DATE('2019-06-09 09:46:34', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2019-06-21 09:46:40', 'YYYY-MM-DD HH24:MI:SS'), '0', 'it1025', null, '0', 'it1023', null, '0', null, TO_DATE('2019-06-19 09:49:59', 'YYYY-MM-DD HH24:MI:SS'), '70000', '데이터베이스 소개', '외부교육', '3', '4', 'Y', null, '데이터베이스 신기술 세미나');
INSERT INTO RESERVE_HISTORY VALUES (RESERVE_HISTORY_SEQ.nextval, 109, 'it1034', TO_DATE('2019-06-12 09:46:34', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2019-06-24 09:46:40', 'YYYY-MM-DD HH24:MI:SS'), '0', 'it1025', null, '0', 'it1023', null, '0', null, TO_DATE('2019-06-19 09:49:59', 'YYYY-MM-DD HH24:MI:SS'), '70000', '클라우드 소개', '외부교육', '3', '4', 'Y', null, '클라우드 신기술 세미나');
INSERT INTO RESERVE_HISTORY VALUES (RESERVE_HISTORY_SEQ.nextval, 112, 'it1037', TO_DATE('2019-06-15 09:46:34', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2019-06-27 09:46:40', 'YYYY-MM-DD HH24:MI:SS'), '0', 'it1025', null, '0', 'it1023', null, '0', null, TO_DATE('2019-06-19 09:49:59', 'YYYY-MM-DD HH24:MI:SS'), '70000', '인공지능 소개', '외부교육', '3', '4', 'Y', null, '인공지능 신기술 세미나');
INSERT INTO RESERVE_HISTORY VALUES (RESERVE_HISTORY_SEQ.nextval, 112, 'it1011', TO_DATE('2019-06-16 09:46:34', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2019-06-28 09:46:40', 'YYYY-MM-DD HH24:MI:SS'), '0', 'it1025', null, '0', 'it1023', null, '0', null, TO_DATE('2019-06-19 09:49:59', 'YYYY-MM-DD HH24:MI:SS'), '70000', '구리의 기초 코딩 교육', '외부교육', '3', '4', 'Y', null, '구리의 코딩교실');


 
--ROOM_EQUIPMENT 더미----------------------------------------------------------------------------------------------------
-- 회의실번호, 비품번호, 비품명, 수량
INSERT INTO room_equipment VALUES (101, 101, '빔프로젝터', 1);
INSERT INTO room_equipment VALUES (101, 102, '마이크', 2);
INSERT INTO room_equipment VALUES (101, 103, '노트북', 1);
INSERT INTO room_equipment VALUES (101, 104, '화이트보드', 1);
INSERT INTO room_equipment VALUES (102, 105, '빔프로젝터', 1);
INSERT INTO room_equipment VALUES (102, 106, '마이크', 2);
INSERT INTO room_equipment VALUES (102, 107, '노트북', 1);


--Meeting_member_list 더미----------------------------------------------------------------------------------------------------
--더미 없음(예약시 자동으로 채워짐)

--Meeting_Equipment_list 더미----------------------------------------------------------------------------------------------------
--더미 없음(예약시 자동으로 채워짐)

--Dept_payment 더미----------------------------------------------------------------------------------------------------


--Competent_department 더미----------------------------------------------------------------------------------------------------
--더미 없음(예약시 자동으로 채워짐)

commit;