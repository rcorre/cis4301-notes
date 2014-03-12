-- Query 1
SELECT athlete
FROM Olympics
GROUP BY athlete
ORDER BY sum(total_medals) desc   -- athlete with most medals at the top
LIMIT 1;                          -- only keey the top result

-- Query 2
SELECT athlete, sum(total_medals) as medals_won   -- sum up all medals
FROM Olympics
GROUP BY athlete;                                 -- per athlete

-- Query 3
SELECT DISTINCT athlete   -- don't repeat an athlete name
FROM Olympics
WHERE total_medals > 0      -- won at least 1 medal
  AND YEAR > 2010           -- 
  AND athlete IS NOT NULL;  -- filter out NULL athletes
