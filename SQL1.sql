SQL*Plus: Release 10.2.0.1.0 - Production on Sat Jul 26 11:46:15 2025

Copyright (c) 1982, 2005, Oracle.  All rights reserved.


Connected to:
Oracle Database 10g Enterprise Edition Release 10.2.0.1.0 - Production
With the Partitioning, OLAP and Data Mining options

SQL> SET PAGES 100 LINES 100
SQL> SELECT * FROM TAB;

TNAME                          TABTYPE  CLUSTERID
------------------------------ ------- ----------
DEPT                           TABLE
EMP                            TABLE
BONUS                          TABLE
SALGRADE                       TABLE

SQL> SELECT * FROM EMP;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20
      7839 KING       PRESIDENT            17-NOV-81       5000                    10
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10

14 rows selected.

SQL> SELECT ENAME FROM EMP;

ENAME
----------
SMITH
ALLEN
WARD
JONES
MARTIN
BLAKE
CLARK
SCOTT
KING
TURNER
ADAMS
JAMES
FORD
MILLER

14 rows selected.

SQL> SELECT ENAME,JOB, SAL FROM EMP;

ENAME      JOB              SAL
---------- --------- ----------
SMITH      CLERK            800
ALLEN      SALESMAN        1600
WARD       SALESMAN        1250
JONES      MANAGER         2975
MARTIN     SALESMAN        1250
BLAKE      MANAGER         2850
CLARK      MANAGER         2450
SCOTT      ANALYST         3000
KING       PRESIDENT       5000
TURNER     SALESMAN        1500
ADAMS      CLERK           1100
JAMES      CLERK            950
FORD       ANALYST         3000
MILLER     CLERK           1300

14 rows selected.

SQL> SELECT ENAME,JOB,SAL*12 FROM SAL;
SELECT ENAME,JOB,SAL*12 FROM SAL
                             *
ERROR at line 1:
ORA-00942: table or view does not exist


SQL> SELECT ENAME,JOB, SAL*12 FROM EMP;

ENAME      JOB           SAL*12
---------- --------- ----------
SMITH      CLERK           9600
ALLEN      SALESMAN       19200
WARD       SALESMAN       15000
JONES      MANAGER        35700
MARTIN     SALESMAN       15000
BLAKE      MANAGER        34200
CLARK      MANAGER        29400
SCOTT      ANALYST        36000
KING       PRESIDENT      60000
TURNER     SALESMAN       18000
ADAMS      CLERK          13200
JAMES      CLERK          11400
FORD       ANALYST        36000
MILLER     CLERK          15600

14 rows selected.

SQL> SELECT SAL-300 FROM EMP;

   SAL-300
----------
       500
      1300
       950
      2675
       950
      2550
      2150
      2700
      4700
      1200
       800
       650
      2700
      1000

14 rows selected.

SQL> SELECT * FROM SALGRADE;

     GRADE      LOSAL      HISAL
---------- ---------- ----------
         1        700       1200
         2       1201       1400
         3       1401       2000
         4       2001       3000
         5       3001       9999

SQL> SELECT * FROM DEPT;

    DEPTNO DNAME          LOC
---------- -------------- -------------
        10 ACCOUNTING     NEW YORK
        20 RESEARCH       DALLAS
        30 SALES          CHICAGO
        40 OPERATIONS     BOSTON


SQL> SELECT * FROM BONUS;

no rows selected
  
SQL> DESC BONUS;
 Name                                                  Null?    Type
 ----------------------------------------------------- -------- ------------------------------------
 ENAME                                                          VARCHAR2(10)
 JOB                                                            VARCHAR2(9)
 SAL                                                            NUMBER
 COMM                                                           NUMBER

