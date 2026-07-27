-- ============================================================
-- Chapter 5 - Critics vs Commercial Success
-- ============================================================

-- Critic Score vs Total Sales

SELECT
    title,
    genre,
    critic_score,
    total_sales
FROM video_games
WHERE critic_score IS NOT NULL
  AND total_sales IS NOT NULL;

---------------------------------------------------------------

-- Blockbuster Masterpieces

SELECT
    title,
    genre,
    critic_score,
    total_sales
FROM video_games
WHERE critic_score >= 9
  AND total_sales >= 10
ORDER BY total_sales DESC;

---------------------------------------------------------------

-- Critical Darlings

SELECT
    title,
    genre,
    critic_score,
    total_sales
FROM video_games
WHERE critic_score >= 9.5
  AND total_sales < 0.5
ORDER BY critic_score DESC;

---------------------------------------------------------------

-- Pearson Correlation

SELECT
    corr(critic_score, total_sales) AS correlation
FROM video_games
WHERE critic_score IS NOT NULL
  AND total_sales IS NOT NULL;