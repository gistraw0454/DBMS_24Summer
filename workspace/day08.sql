--제약조건 DEFAULT 와 CHECK
--학생 테이블 생성
CREATE TABLE TBL_STUDENT(
	ID NUMBER,
	NAME VARCHAR2(100),
	MAJOR VARCHAR2(100),
	-- GENDER CHAR(1) DEFAULT 'W' NOT NULL CONSTRAINT BAN_CHAR CHECK(GENDER = 'M' OR GENDER = 'W')
	GENDER CHAR(1) DEFAULT 'W' NOT NULL CONSTRAINT BAN_CHAR CHECK(GENDER IN ('M','W')),
	--"W","M"으로만 받을거라서 CHAR 로 1글자로 정하고 "W"와 "M"만 받을 수 있게 제약조건 설정
	BIRTH DATE CONSTRAINT BAN_DATE CHECK(BIRTH >= TO_DATE('1980-01-01','YYYY-MM-DD')),
	CONSTRAINT STD_PK PRIMARY KEY(ID)	
);

INSERT INTO TBL_STUDENT
(ID, NAME, MAJOR, GENDER, BIRTH)
VALUES(1, '한동석', '컴퓨터공학과', 'M' , TO_DATE('1980-01-02','YYYY-MM-DD')); --제약조건에 안맞으면 오류 나옴

SELECT * FROM TBL_STUDENT;

INSERT INTO TBL_STUDENT
(ID,NAME,MAJOR,BIRTH) --GENDER을 넣지않아도 DEFAULT 가 있으니 잘 들어감.
VALUES(3, '홍길동', '전자공학과', TO_DATE('1980-01-02','YYYY-MM-DD')); --제약조건에 안맞으면 오류 나옴

TRUNCATE TABLE TBL_STUDENT;

