--SELECT * FROM FLOWER; 이게 더 느림
SELECT FLOWERNAME, FLOWERCOLOR, FLOWERPRICE FROM FLOWER;

-- 추가 : 부모와 자식 중 부모 테이블에 값을 먼저 추가해야한다.
INSERT INTO FLOWER
(FLOWERNAME, FLOWERCOLOR, FLOWERPRICE)
VALUES('장미','RED',3000);

INSERT INTO FLOWER
(FLOWERNAME, FLOWERCOLOR, FLOWERPRICE)
VALUES('해바라기','YELLOW',5000);

INSERT INTO FLOWER
(FLOWERNAME, FLOWERCOLOR, FLOWERPRICE)
VALUES('할미꽃','WHITE',9000);

-- 삭제 : 부모와 자식 중 자식테이블에서 참조하는 값들을 먼저 삭제 해야한다.
DELETE FROM FLOWER
WHERE FLOWERNAME = 장미;

SELECT * FROM POT;

-- TABLE -> 우클릭 -> SQL -> INSERT -> COPY 해오면됨.. 굳이 외울필요 X
INSERT INTO POT
(POTID, POTCOLOR, POTSHAPE, NAME)
VALUES('20210505001', 'WHITE', '물레방아', '장미'); -- PK에있는 것만 가져올 수 있으니 개나리 이딴거 X

INSERT INTO POT
(POTID, POTCOLOR, POTSHAPE, NAME)
VALUES('20210505002', 'BLACK', '타원형', '해바라기');

INSERT INTO POT
(POTID, POTCOLOR, POTSHAPE, NAME)
VALUES('20210506004', 'RED', '사각형', '할미꽃');


DELETE FROM POT 
WHERE NAME = '장미';

--UPDATE 
-- POT TABLE 에서 색을 WHITE로 수정하겠다. 누굴? NAME이 할미꽃이고 POTSHAPE가 타원형인.
UPDATE POT
SET POTCOLOR = 'WHITE'
WHERE NAME = '할미꽃' AND POTSHAPE = '타원형';
