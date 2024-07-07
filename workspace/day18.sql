DROP TABLE CAR;
SELECT * FROM TBL_CAR;

CREATE TABLE TBL_CAR(
	ID NUMBER,
	BRAND VARCHAR2(300),
	COLOR VARCHAR2(150),
	PRICE NUMBER(10),
	CONSTRAINT CAR_PK PRIMARY KEY(ID)
);

ALTER TABLE TBL_CAR MODIFY BRAND NOT NULL;
ALTER TABLE TBL_CAR DROP CONSTRAINT SYS_C007330;

--PLAYER TABLE 에서 POSTION이 NULL 인 선수 검색
SELECT * FROM PLAYER;
SELECT * FROM PLAYER WHERE PLAYER."POSITION" IS NULL;
SELECT * FROM PLAYER WHERE PLAYER."POSITION" IS NOT NULL;