-- ============================================================
-- Chapter 3 - Console Generations
-- ============================================================

-- Best Selling Genre by Console

SELECT
    console,
    genre,
    ROUND(SUM(total_sales)::numeric,2) AS total_sales
FROM video_games
WHERE total_sales IS NOT NULL
GROUP BY console, genre
ORDER BY console, total_sales DESC;

---------------------------------------------------------------

-- Total Console Sales

SELECT
    console,
    ROUND(SUM(total_sales)::numeric,2) AS total_sales
FROM video_games
GROUP BY console
ORDER BY total_sales DESC;

---------------------------------------------------------------

-- Total Games Released by Console

SELECT
    console,
    COUNT(*) AS total_games
FROM video_games
GROUP BY console
ORDER BY total_games DESC;