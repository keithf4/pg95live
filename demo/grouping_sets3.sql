SELECT
    appnumber,
    day,
    sum(inserts),
    sum(updates),
    sum(deletes),
    sum(transactions)
FROM
    db_details
GROUP BY GROUPING SETS ( appnumber, day );
