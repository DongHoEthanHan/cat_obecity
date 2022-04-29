-- SELECT 구문 
/*
테이블에 저장된 데이터를 검색(조회 : 찾아내기 위한)하기 위해 사용하는 SQL 구문임. 
DQL(Data Query Language : 데이터 조회어) 라고도 함 

SELECT 구문 기본 작성법 : 
    SELECT *
    FROM 조회에 사용할 테이블명 ; 

 * : 테이블이 가진 모든 컬럼을 의미함 
*/

-- 직원(EMPLOYEE) 테이블에 저장된 전체 데이터를 조회한다면 
SELECT * -- * 전체 불러 오기, * | 컬럼명, 컬럼명, 함수표현식 | 계산식 
FROM EMPLOYEE;

-- 직원 테이블에서 사번, 이름, 주민번호 조회 
SELECT EMP_ID, EMP_NAME, EMP_NO
FROM EMPLOYEE ; 

-- 직원 테이블에서 사번, 이름, 직급코드, 급여, 연봉(급여 * 12) 

SELECT EMP_ID,EMP_NAME,JOB_ID, SALARY, SALARY * 12
FROM EMPLOYEE;

-- 테이블에서 원하는 데이터를 조회하는 형태가 
-- 1. 특정 컬럼을 조회하는 경우 
SELECT EMP_NAME, JOB_ID, DEPT_ID
FROM EMPLOYEE ; 

-- 2. 특정 행을 조회하는 경우
-- 공통 조건을 제시함 : 직급코드가 'J4'인 직원들의 정보를 조회
SELECT * 
FROM EMPLOYEE 
WHERE JOB_ID = 'J4';

-- 3. 특정 행과 특정 컬럼을 조회하는 겨웅 
-- 특정 행 골라낼 떄는 조건절 사용 : WHERE 절 
SELECT EMP_ID, EMP_NAME, JOB_ID, SALARY, BONUS_PCT
FROM EMPLOYEE 
WHERE JOB_ID = 'J4';

-- 4. SELECT 구문은 기본 한 개의 테이블에 대한 데이터 조회임.
-- 필요할 경우에는 여러 개의 테이블을 합쳐서(조인) 원하는 컬럼 값 조회할 수 있음 
SELECT EMP_ID, EMP_NAME, DEPT_ID, DEPT_NAME
FROM EMPLOYEE
JOIN DEPARTMENT USING (DEPT_ID) ;  -- USING 다음에는 괄호 써야함 






