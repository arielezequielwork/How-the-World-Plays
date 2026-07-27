-- ============================================================
-- Chapter 2 - Regional Preferences
-- ============================================================

-- Regional Genre Market Share Heatmap

SELECT
    genre,
    ROUND(100.0 * SUM(na_sales) / SUM(SUM(na_sales)) OVER (), 2) AS na_share,
    ROUND(100.0 * SUM(jp_sales) / SUM(SUM(jp_sales)) OVER (), 2) AS jp_share,
    ROUND(100.0 * SUM(pal_sales) / SUM(SUM(pal_sales)) OVER (), 2) AS pal_share,
    ROUND(100.0 * SUM(other_sales) / SUM(SUM(other_sales)) OVER (), 2) AS other_share
FROM video_games
GROUP BY genre
ORDER BY genre;