\set ECHO ALL

SELECT appnumber, sum(inserts), sum(updates), sum(deletes), sum(transactions)
FROM db_details
GROUP BY appnumber;

SELECT day, sum(inserts), sum(updates), sum(deletes), sum(transactions)
FROM db_details
GROUP BY day;
