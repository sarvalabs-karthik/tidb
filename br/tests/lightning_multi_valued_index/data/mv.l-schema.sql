create table l(pk bigint primary key auto_increment ,j json, i bigint, c char(64), index ((cast(j->'$.number' as signed array))), index ((cast(j->'$.string' as char(64) array))), unique index (pk, (cast(j->'$.number' as signed array)), c)) partition by hash(pk) PARTITIONS 10;
