# datetime in where

## 1. 인덱스는 기본

## 2. where절 구문 
- 4번이 가장 빠름
- 1,2번은 index를 안탐
- profile로 확인해 보면 3번보다 4번이 빠름

```
1. WHERE created_at LIKE '2017-01-06%'
2. WHERE date(created_at) = '2017-01-06'
3. WHERE created_at BETWEEN '2017-01-06 00:00:00' AND '2017-01-06 23:59:59'
4. WHERE created_at >= '2017-01-06 00:00:00' AND created_at <= '2017-01-06 23:59:59'
```

## 3. 좀 더 빠르게 하려면 unix_timestamp 활용
- datatype을 datetime에서 int로 변경

## 4. profile
```
mysql> SET SESSION profiling = 1;
mysql> SELECT COUNT(*) FROM test WHERE created_at BETWEEN '2017-01-06 00:00:00' AND '2017-01-06 23:59:59';
mysql> SELECT COUNT(*) FROM test WHERE created_at >= '2017-01-06 00:00:00' AND created_at <= '2017-01-06 23:59:59';
mysql> SHOW PROFILES;
mysql> SET SESSION profiling = off;
mysql> SHOW PROFILE FOR QUERY 1;
mysql> SHOW PROFILE CPU FOR QUERY 1;
mysql> SELECT QUERY_ID, SEQ, STATE, DURATION  FROM INFORMATION_SCHEMA.PROFILING WHERE QUERY_ID = 1;
mysql> SELECT * FROM INFORMATION_SCHEMA.PROFILING WHERE QUERY_ID = 1;
```

## 5. 참고
- http://egloos.zum.com/tiger5net/v/5751776
- http://www.phpschool.com/gnuboard4/bbs/board.php?bo_table=qna_db&wr_id=169726
- http://tokyogoose.tistory.com/304


