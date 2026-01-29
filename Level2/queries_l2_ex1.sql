-- 1. List all public videos ordered by views
SELECT * FROM videos WHERE status = 'public' ORDER BY views_count DESC;

-- 2. Count videos by status
SELECT status, COUNT(*) FROM videos GROUP BY status;

-- 3. Show users by country
SELECT country, COUNT(*) FROM users GROUP BY country;

-- 4. Videos with username and likes
SELECT v.title, u.username, v.likes_count, v.publish_datetime
FROM videos v
JOIN users u ON v.user_id = u.user_id
ORDER BY v.likes_count DESC;

-- 5. Public playlist with videos and creator
SELECT p.name AS playlist_name, u.username AS creator, 
       v.title AS video_title, pv.added_datetime
FROM playlists p
JOIN users u ON p.user_id = u.user_id
JOIN playlist_videos pv ON p.playlist_id = pv.playlist_id
JOIN videos v ON pv.video_id = v.video_id
WHERE p.status = 'public';

-- 6. Top 5 most popular videos (like/dislike ratio)
SELECT v.title, u.username,
       v.likes_count, v.dislikes_count,
       (v.likes_count - v.dislikes_count) AS net_likes
FROM videos v
JOIN users u ON v.user_id = u.user_id
ORDER BY net_likes DESC
LIMIT 5;

-- 7. Engagement per video (% likes over views)
SELECT v.title,
       v.views_count,
       v.likes_count,
       ROUND((v.likes_count * 100.0 / v.views_count), 2) AS engagement_rate
FROM videos v
WHERE v.views_count > 0
ORDER BY engagement_rate DESC;