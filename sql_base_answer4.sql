-- 問32
SELECT 
    MIN(ranking) AS AグループのFIFAランク最上位
FROM 
    countries
WHERE 
    group_name = 'A';

-- 問33
SELECT 
    SUM(ranking) AS CグループのFIFAランクの合計値
FROM 
    countries
WHERE 
    group_name = 'C';

-- 問34
SELECT
    c.name AS country,
    p.name AS player,
    p.uniform_num
FROM
    players AS p
JOIN
    countries AS c
ON
    p.country_id = c.id;

-- 問35
SELECT
    c.name AS country,
    p.name AS player,
    g.goal_time
FROM
    goals AS g
JOIN
    players AS p
ON
    g.player_id = p.id
JOIN
    countries AS c
ON
    p.country_id = c.id
WHERE
    g.player_id IS NOT NULL;

-- 問36
SELECT
    g.goal_time,
    p.uniform_num,
    p.position,
    p.name
FROM
    goals AS g
LEFT JOIN
    players AS p
ON
    g.player_id = p.id;

-- 問37
SELECT
    g.goal_time,
    p.name
FROM
    players AS p
RIGHT JOIN
    goals AS g
ON
    p.id = g.player_id;

-- 問38
SELECT
    c.name AS country_name,
    g.goal_time,
    p.position,
    p.name AS player_name
FROM
    goals AS g
LEFT JOIN
    players AS p
ON
    g.player_id = p.id
LEFT JOIN
    countries AS c
ON
    p.country_id = c.id;

-- 問39
SELECT
    m.kickoff,
    c1.name AS my_country,
    c2.name AS enemy_country
FROM
    matches AS m
JOIN
    countries AS c1
    ON m.country_id = c1.id
JOIN
    countries AS c2
    ON m.enemy_country_id = c2.id;



