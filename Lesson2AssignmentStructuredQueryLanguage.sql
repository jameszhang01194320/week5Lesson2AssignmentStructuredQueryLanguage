--   Lesson 2: Assignment | Structured Query Language (SQL)
--   Remember to take your time and work through each question diligently! Test your code, make sure it works, and try to find ways to improve. Once you are happy and satisfied with your code, upload it to Github, then turn in your Github link at the bottom of the page!

--   Don't forget. Make sure this assignment is in it's own repository. Not mixed in with others!

--   1. Database Development for a Music Library
--   Objective: The aim of this assignment is to apply foundational knowledge of Data Definition Language (DDL) to create, modify, and manage a music library database. This involves establishing table structures, defining relationships, and ensuring data integrity for storing information about albums, artists, and genres.

--   Task 1: SQL Table Creation

--   Problem Statement: You need to create tables named Albums, Genre, and Artists that will store information about music. The Albums table should include columns for album ID, title, artist ID, genre ID, release year, and total tracks. You have to decide what data should be included in the Genre and Artist tables.
--   Expected Outcome: Tables are successfully created through DDL statements.

CREATE TABLE Genre (
    genre_id INT PRIMARY KEY AUTO_INCREMENT,
    genre_name VARCHAR(50)
);


CREATE TABLE Artists (
    artist_id INT PRIMARY KEY AUTO_INCREMENT,
    artist_name VARCHAR(50)
);


CREATE TABLE Albums (
    album_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(100),
    artist_id INT,
    genre_id INT,
    release_year INT,
    total_tracks INT
);

--   Task 2: SQL Alteration

--   Problem Statement: After creating the Albums table, you realize that you need to add a column for the album's total duration in minutes.
--   Expected Outcome: The Albums table is successfully modified to include a new column duration for the total duration of the album.

ALTER TABLE Albums
ADD duration INT;

--   Task 3: SQL Foreign Key Establishment

--   Problem Statement: Establish a relationship between the Albums table and the Artists and Genre tables (assuming the Artists and Genre tables exist with an id column). Ensure that each album is linked to an existing artist and genre in the Artists and Genre table respectively.
--   Expected Outcome: Foreign key constraints are successfully added to the Albums table ensuring referential integrity between the tables.
--   EXTRA CREDIT:  Create an ERD for this assignment.

ALTER TABLE Albums
ADD FOREIGN KEY (artist_id) REFERENCES Artists(artist_id),
ADD FOREIGN KEY (genre_id) REFERENCES Genre(genre_id);