SELECT 
    *
FROM
    Proteins
LIMIT 10000;

SELECT 
    *
FROM
    Proteins
WHERE
    name LIKE '%transcription factor%';

create index idx_name on Proteins (name(15));
alter table Proteins drop index idx_name;