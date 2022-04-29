-- SELECT ���� 
/*
���̺� ����� �����͸� �˻�(��ȸ : ã�Ƴ��� ����)�ϱ� ���� ����ϴ� SQL ������. 
DQL(Data Query Language : ������ ��ȸ��) ��� �� 

SELECT ���� �⺻ �ۼ��� : 
    SELECT *
    FROM ��ȸ�� ����� ���̺�� ; 

 * : ���̺��� ���� ��� �÷��� �ǹ��� 
*/

-- ����(EMPLOYEE) ���̺� ����� ��ü �����͸� ��ȸ�Ѵٸ� 
SELECT * -- * ��ü �ҷ� ����, * | �÷���, �÷���, �Լ�ǥ���� | ���� 
FROM EMPLOYEE;

-- ���� ���̺��� ���, �̸�, �ֹι�ȣ ��ȸ 
SELECT EMP_ID, EMP_NAME, EMP_NO
FROM EMPLOYEE ; 

-- ���� ���̺��� ���, �̸�, �����ڵ�, �޿�, ����(�޿� * 12) 

SELECT EMP_ID,EMP_NAME,JOB_ID, SALARY, SALARY * 12
FROM EMPLOYEE;

-- ���̺��� ���ϴ� �����͸� ��ȸ�ϴ� ���°� 
-- 1. Ư�� �÷��� ��ȸ�ϴ� ��� 
SELECT EMP_NAME, JOB_ID, DEPT_ID
FROM EMPLOYEE ; 

-- 2. Ư�� ���� ��ȸ�ϴ� ���
-- ���� ������ ������ : �����ڵ尡 'J4'�� �������� ������ ��ȸ
SELECT * 
FROM EMPLOYEE 
WHERE JOB_ID = 'J4';

-- 3. Ư�� ��� Ư�� �÷��� ��ȸ�ϴ� �ܿ� 
-- Ư�� �� ��� ���� ������ ��� : WHERE �� 
SELECT EMP_ID, EMP_NAME, JOB_ID, SALARY, BONUS_PCT
FROM EMPLOYEE 
WHERE JOB_ID = 'J4';

-- 4. SELECT ������ �⺻ �� ���� ���̺� ���� ������ ��ȸ��.
-- �ʿ��� ��쿡�� ���� ���� ���̺��� ���ļ�(����) ���ϴ� �÷� �� ��ȸ�� �� ���� 
SELECT EMP_ID, EMP_NAME, DEPT_ID, DEPT_NAME
FROM EMPLOYEE
JOIN DEPARTMENT USING (DEPT_ID) ;  -- USING �������� ��ȣ ����� 






