USE youtube_mini;

SET FOREIGN_KEY_CHECKS = 0;

TRUNCATE TABLE users;
INSERT INTO users (email, password, username, birth_date, gender, country, zip_code) VALUES
('alex@gmail.com', 'hashed_pass_1', 'alex_gamer', '1995-03-15', 'Male', 'Spain', '08001'),
('maria@hotmail.com', 'hashed_pass_2', 'maria_tech', '1990-07-22', 'Female', 'Spain', '28013'),
('john@yahoo.com', 'hashed_pass_3', 'john_traveler', '1988-11-30', 'Male', 'USA', '10001'),
('lisa@outlook.com', 'hashed_pass_4', 'lisa_cooks', '1992-04-18', 'Female', 'Italy', '00100'),
('carlos@gmail.com', 'hashed_pass_5', 'carlos_music', '1998-09-05', 'Male', 'Mexico', '06600'),
('sofia@gmail.com', 'hashed_pass_6', 'sofia_art', '1994-12-10', 'Female', 'Spain', '41001'),
('mike@hotmail.com', 'hashed_pass_7', 'mike_fitness', '1991-06-25', 'Male', 'UK', 'SW1A1AA'),
('anna@gmail.com', 'hashed_pass_8', 'anna_learns', '1993-01-14', 'Female', 'Germany', '10115'),
('david@yahoo.com', 'hashed_pass_9', 'david_gaming', '1997-08-08', 'Male', 'France', '75008'),
('elena@gmail.com', 'hashed_pass_10', 'elena_yoga', '1989-05-03', 'Female', 'Spain', '46001');

TRUNCATE TABLE videos;
INSERT INTO videos (user_id, title, description, size, file_name, duration, thumbnail_url, views_count, likes_count, dislikes_count, status, publish_datetime) VALUES
(1, 'Gaming: Last Level Complete', 'Final boss fight in awesome game!', 2450.50, 'game_final.mp4', 1250, 'thumb1.jpg', 15000, 1200, 50, 'public', '2024-01-15 14:30:00'),
(1, 'Top 5 Games 2024', 'My personal selection for this year', 1800.25, 'top5games.mp4', 850, 'thumb2.jpg', 8500, 750, 20, 'public', '2024-02-10 18:15:00'),
(1, 'Secret Easter Egg Found', 'Hidden content discovered!', 950.75, 'easter_egg.mp4', 420, 'thumb3.jpg', 3200, 300, 5, 'public', '2024-03-05 20:45:00'),
(2, 'Python Tutorial for Beginners', 'Learn Python from zero', 3200.00, 'python_intro.mp4', 2200, 'thumb4.jpg', 25000, 2100, 30, 'public', '2024-01-20 10:00:00'),
(2, 'Database Design Tips', 'How to design efficient databases', 2800.50, 'db_design.mp4', 1950, 'thumb5.jpg', 12000, 950, 15, 'public', '2024-02-28 16:30:00'),
(2, 'Web Development Crash Course', 'HTML, CSS, JS in 30 minutes', 1500.25, 'web_crash.mp4', 1800, 'thumb6.jpg', 18000, 1500, 40, 'public', '2024-03-12 11:20:00'),
(3, 'Japan Travel Vlog', 'Amazing trip to Tokyo and Kyoto', 4200.75, 'japan_vlog.mp4', 2450, 'thumb7.jpg', 35000, 2800, 80, 'public', '2024-01-05 09:00:00'),
(3, 'Best Beaches in Thailand', 'Top 10 beaches you must visit', 3800.00, 'thailand.mp4', 2100, 'thumb8.jpg', 22000, 1800, 45, 'public', '2024-02-14 12:45:00'),
(3, 'Hidden Gems of Italy', 'Places only locals know', 2950.25, 'italy_hidden.mp4', 1750, 'thumb9.jpg', 15000, 1250, 25, 'public', '2024-03-20 15:30:00'),
(4, 'Easy Pasta Carbonara', 'Authentic Italian recipe', 1250.50, 'carbonara.mp4', 850, 'thumb10.jpg', 42000, 3800, 120, 'public', '2024-01-25 17:00:00'),
(4, '5 Healthy Breakfasts', 'Quick and nutritious meals', 980.75, 'breakfasts.mp4', 720, 'thumb11.jpg', 28000, 2400, 60, 'public', '2024-02-08 10:15:00'),
(4, 'Chocolate Cake Recipe', 'Decadent dessert tutorial', 1650.00, 'chocolate_cake.mp4', 1100, 'thumb12.jpg', 32000, 2900, 75, 'public', '2024-03-18 14:20:00'),
(5, 'Guitar Cover: Hotel California', 'My version of this classic', 2200.25, 'hotel_california.mp4', 980, 'thumb13.jpg', 18000, 1600, 35, 'public', '2024-01-30 20:00:00'),
(5, 'Music Theory Basics', 'Understanding scales and chords', 1950.50, 'music_theory.mp4', 1450, 'thumb14.jpg', 9500, 850, 18, 'public', '2024-02-22 19:30:00'),
(5, 'Original Song: Midnight', 'My latest composition', 1850.75, 'midnight_song.mp4', 920, 'thumb15.jpg', 12000, 1100, 28, 'public', '2024-03-25 21:45:00'),
(6, 'My Art Collection', 'Private art pieces', 850.00, 'art_private.mp4', 650, 'thumb16.jpg', 500, 50, 2, 'private', '2024-02-01 13:00:00'),
(7, 'Home Workout Routine', 'Hidden workout video', 1200.25, 'workout_hidden.mp4', 880, 'thumb17.jpg', 800, 80, 3, 'hidden', '2024-02-15 08:00:00'),
(8, 'German Lesson 1', 'Introduction to German', 2100.50, 'german1.mp4', 1600, 'thumb18.jpg', 3000, 250, 8, 'public', '2024-03-01 10:30:00'),
(9, 'Stream Highlights', 'Best gaming moments', 2450.75, 'stream_highlights.mp4', 1350, 'thumb19.jpg', 7500, 650, 22, 'public', '2024-03-10 22:15:00'),
(10, 'Morning Yoga Flow', '15-minute daily routine', 950.00, 'morning_yoga.mp4', 900, 'thumb20.jpg', 12500, 1100, 30, 'public', '2024-03-22 07:00:00');

TRUNCATE TABLE tags;
INSERT INTO tags (tag_name) VALUES
('gaming'), ('tutorial'), ('music'), ('travel'), ('cooking'),
('tech'), ('education'), ('fitness'), ('art'), ('entertainment');

TRUNCATE TABLE video_tags;
INSERT INTO video_tags (video_id, tag_id) VALUES
(1, 1), (1, 10),
(2, 1), (2, 10),
(3, 1),
(19, 1), (19, 10),
(4, 2), (4, 6), (4, 7),
(5, 2), (5, 6), (5, 7),
(6, 2), (6, 6),
(7, 4), (7, 10),
(8, 4),
(9, 4),
(10, 5), (10, 2),
(11, 5), (11, 2),
(12, 5), (12, 2),
(13, 3), (13, 10),
(14, 3), (14, 7),
(15, 3),
(16, 9),
(17, 8), (17, 2),
(18, 7), (18, 2),
(20, 8), (20, 2);

TRUNCATE TABLE channels;
INSERT INTO channels (user_id, name, description, creation_date) VALUES
(1, 'Alex Gaming World', 'All about video games and streaming', '2023-06-10'),
(2, 'Tech with Maria', 'Programming tutorials and tech reviews', '2023-08-15'),
(3, 'John Explores', 'Travel vlogs and adventure content', '2023-05-20'),
(4, 'Lisa Kitchen', 'Cooking recipes and food tips', '2023-07-01'),
(5, 'Carlos Music Studio', 'Music covers and original songs', '2023-09-05');

TRUNCATE TABLE subscriptions;
INSERT INTO subscriptions (user_id, channel_id) VALUES
(2, 1), (3, 1), (4, 1), (5, 1), (6, 1),
(1, 2), (3, 2), (7, 2), (8, 2),
(2, 3), (4, 3), (9, 3), (10, 3),
(1, 4), (5, 4), (6, 4), (7, 4), (8, 4), (9, 4), (10, 4),
(2, 5), (3, 5), (4, 5);

TRUNCATE TABLE user_video_ratings;
INSERT INTO user_video_ratings (user_id, video_id, rating) VALUES
(2, 1, 'like'), (3, 1, 'like'), (4, 1, 'like'),
(1, 4, 'like'), (5, 4, 'like'), (6, 4, 'like'),
(7, 7, 'like'), (8, 7, 'like'), (9, 7, 'like'),
(2, 10, 'like'), (3, 10, 'like'), (5, 10, 'like'),
(1, 13, 'like'), (4, 13, 'like'), (6, 13, 'like'),
(8, 16, 'like'), (9, 16, 'like'), (10, 16, 'like'),
(7, 1, 'dislike'), (8, 4, 'dislike'), (10, 7, 'dislike'),
(10, 2, 'like'), (1, 5, 'like'), (2, 8, 'like'),
(3, 11, 'like'), (4, 14, 'like'), (5, 17, 'like'),
(6, 18, 'like'), (7, 19, 'like'), (8, 20, 'like'),
(9, 3, 'like'), (10, 6, 'like'), (1, 9, 'like');

TRUNCATE TABLE playlists;
INSERT INTO playlists (user_id, name, creation_date, status) VALUES
(1, 'Favorite Gaming Videos', '2024-02-01', 'public'),
(2, 'Learn Programming', '2024-01-20', 'public'),
(3, 'Travel Inspiration', '2024-01-15', 'private'),
(4, 'Cooking Recipes', '2024-02-10', 'public'),
(5, 'Music to Relax', '2024-02-25', 'private'),
(6, 'Art & Creativity', '2024-03-05', 'public');

TRUNCATE TABLE playlist_videos;
INSERT INTO playlist_videos (playlist_id, video_id) VALUES
(1, 1), (1, 2), (1, 3), (1, 19),
(2, 4), (2, 5), (2, 6), (2, 18),
(3, 7), (3, 8), (3, 9),
(4, 10), (4, 11), (4, 12),
(5, 13), (5, 14), (5, 15),
(6, 16), (6, 17), (6, 20);

TRUNCATE TABLE comments;
INSERT INTO comments (user_id, video_id, comment_text) VALUES
(2, 1, 'Awesome gameplay! What difficulty were you playing on?'),
(3, 1, 'I got stuck on this boss for days, great strategy!'),
(4, 1, 'Nice ending! Looking forward to the next video.'),
(1, 4, 'Very clear explanation, helped me a lot!'),
(5, 4, 'Can you make a video about Django framework?'),
(6, 4, 'Perfect for beginners, thanks Maria!'),
(2, 7, 'Japan is my dream destination!'),
(4, 7, 'Which month is best to visit?'),
(9, 7, 'Great video quality and editing!'),
(1, 10, 'I tried this recipe and it was delicious!'),
(3, 10, 'Authentic Italian recipe, well done!'),
(7, 10, 'What cheese do you recommend?'),
(4, 13, 'Beautiful cover, you have great talent!'),
(6, 13, 'Can you share the tabs?'),
(8, 13, 'One of my favorite songs, great job!'),
(5, 2, 'Great list of games!'),
(7, 5, 'Very useful for my database project.'),
(8, 8, 'Thailand beaches look amazing!'),
(9, 11, 'Healthy breakfast ideas are great!'),
(10, 14, 'Music theory explained simply.'),
(1, 17, 'Tough workout but effective.'),
(2, 18, 'Learning German slowly but surely.'),
(3, 19, 'Funny gaming moments!'),
(4, 20, 'Perfect morning routine, thanks!');

TRUNCATE TABLE user_comment_ratings;
INSERT INTO user_comment_ratings (user_id, comment_id, rating) VALUES
(1, 1, 'like'), (2, 1, 'like'), (3, 1, 'like'),
(4, 4, 'like'), (5, 4, 'like'),
(6, 7, 'like'), (7, 7, 'like'), (8, 7, 'like'),
(9, 10, 'like'), (10, 10, 'like'),
(1, 13, 'like'), (2, 13, 'like'),
(5, 1, 'dislike'), (7, 4, 'dislike'),
(3, 2, 'like'), (4, 5, 'like'), (5, 8, 'like'),
(6, 11, 'like'), (7, 14, 'like'), (8, 17, 'like'),
(9, 20, 'like'), (10, 23, 'like');

SET FOREIGN_KEY_CHECKS = 1;

SELECT 'Database populated successfully!' AS Message;
SELECT 
    (SELECT COUNT(*) FROM users) AS total_users,
    (SELECT COUNT(*) FROM videos) AS total_videos,
    (SELECT COUNT(*) FROM comments) AS total_comments,
    (SELECT COUNT(*) FROM playlists) AS total_playlists;