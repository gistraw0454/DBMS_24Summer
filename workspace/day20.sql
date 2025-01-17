SELECT ROUND(AVG(HEIGHT),2),MAX(HEIGHT),MIN(HEIGHT),SUM(HEIGHT),COUNT(HEIGHT) FROM PLAYER;

--PLAYER TABLE에서 HEIGHT 개수 검색(NULL 포함해서 COUNT)
SELECT COUNT(HEIGHT) FROM PLAYER;
--NULL을 포함하고싶으면 NVL로 NULL을 실제값으로 바꿔줘야한다.
SELECT COUNT(NVL(HEIGHT,0)) FROM PLAYER;

-- ORDER BY

SELECT * FROM PLAYER ORDER BY HEIGHT; --DEFAULT 는 오름차순
SELECT * FROM PLAYER ORDER BY HEIGHT DESC;
--COL 명이 어려울때 열 번호로 써도됨. (1부터~)
SELECT * FROM PLAYER ORDER BY 12 DESC;

--PLAYER TABLE에서 키순, 몸무게순(오름차순)으로 검색
--NULL이 아닌 값만 검색
-- 첫번째 컬럼값이 같으면 두번째 정렬을 한다
SELECT PLAYER_NAME,HEIGHT,WEIGHT FROM PLAYER
WHERE HEIGHT IS NOT NULL AND WEIGHT IS NOT NULL 
ORDER BY 2, 3;

--CASE
SELECT * FROM EMP;
SELECT ENAME 사원명, SAL 급여,
	CASE 
		WHEN SAL>=3000 THEN 'HIGH'
		WHEN SAL>=1000 THEN 'MID'
		ELSE 'LOW'
	END 
FROM EMP;

--STADIUM TABLE에서 SEAR_COUNT 가 0이상 30000이하면 'S'
--30001 이상 50000 'M' 아니면 'L'
--중첩케이스문
SELECT STADIUM_NAME 경기장, SEAT_COUNT 좌석수,
	CASE 
		WHEN SEAT_COUNT BETWEEN 0 AND 30000 THEN 'S' 
		ELSE (
		CASE
			WHEN SEAT_COUNT BETWEEN 30001 AND 50000 THEN 'M'
			ELSE 'L'
			END
		)
		END
FROM STADIUM;
	

--PLAYER TABLE에서 WEIGHT 가 50이상 70이하면 'L'
--71이상 80이하면 'M' NULL이면 '미등록' 아니면 'H'
SELECT  PLAYER_NAME 선수이름,HEIGHT||'KG' 몸무게,
CASE 
	WHEN WEIGHT BETWEEN 50 AND 70 THEN 'L'
	WHEN WEIGHT BETWEEN 71 AND 80 THEN 'M'
	ELSE (
		CASE WHEN WEIGHT IS NULL THEN '미등록'
		ELSE 'H'
		END 
	)
END 체급
FROM PLAYER;
