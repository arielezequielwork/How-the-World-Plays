-- ============================================================
-- Chapter 1 - The Golden Era of Gaming
-- ============================================================

-- Annual Total Sales

SELECT
    release_year,
    ROUND(SUM(total_sales)::numeric, 2) AS total_sales
FROM video_games
WHERE total_sales IS NOT NULL
GROUP BY release_year
ORDER BY release_year;

---------------------------------------------------------------

-- Games Released by Year

SELECT
    release_year,
    COUNT(*) AS games_released
FROM video_games
GROUP BY release_year
ORDER BY release_year;