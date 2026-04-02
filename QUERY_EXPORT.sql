SELECT *
FROM vista_profilo_acn
INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/profilo_acn.csv'
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n';