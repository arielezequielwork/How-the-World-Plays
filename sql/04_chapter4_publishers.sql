-- ============================================================
-- Chapter 4 - Publishers
-- ============================================================

-- Publisher Performance Quadrant

SELECT
    publisher,
    COUNT(*) AS games_published,
    ROUND(SUM(total_sales)::numeric,2) AS total_sales,
    ROUND(AVG(total_sales)::numeric,2) AS avg_sales_per_game
FROM video_games
WHERE total_sales IS NOT NULL
GROUP BY publisher
HAVING COUNT(*) >= 20
ORDER BY avg_sales_per_game DESC;

---------------------------------------------------------------

-- Publisher Quality Overview

SELECT
    publisher,
    ROUND(AVG(critic_score)::numeric,2) AS avg_score,
    ROUND(AVG(total_sales)::numeric,2) AS avg_sales
FROM video_games
WHERE critic_score IS NOT NULL
GROUP BY publisher
HAVING COUNT(*) >= 10
ORDER BY avg_score DESC;