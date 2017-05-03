drop schema if exists `scno223`;
create schema if not exists `scno223`;
use `scno223`;

# Must be dropped in this order. 
# Cannot drop a table whose key is a 
# foreign key constraint in another table before
# dropping the dependent table
drop table if exists User;
drop table if exists Crew;
drop table if exists Tags;
drop table if exists Genres;
drop table if exists Ratings;
drop table if exists Movie;

CREATE TABLE IF NOT EXISTS Movie
(MID INT NOT NULL AUTO_INCREMENT,
Title VARCHAR(45) NOT NULL,
Summary VARCHAR(300) NOT NULL,
Language VARCHAR(45) NOT NULL,
Duration VARCHAR(45) NOT NULL,
Release_date DATE NOT NULL,
Avg_rating DECIMAL(2),
PRIMARY KEY(MID));

INSERT INTO Movie (Title, Summary, Language, Duration, Release_date)VALUES (
'Beauty and the Beast','An adaptation of the Disney fairy 
tale about a monstrous-looking prince and a young woman who fall in love.',
'English', '2h 9min', 20170317
);

INSERT INTO Movie (Title, Summary, Language, Duration, Release_date)VALUES (
'Logan', 'In the near future, a weary Logan cares for an ailing Professor X somewhere 
on the Mexican border. However, Logans attempts to hide from the world and his legacy 
are upended when a young mutant arrives, pursued by dark forces.', 'English', '2h 17min',
20170303
);

INSERT INTO Movie (Title, Summary, Language, Duration, Release_date)VALUES (
'Get Out', 'A young African-American man visits his Caucasian girlfriends 
mysterious family estate.', 'English', '1h 44min',
20170224);

INSERT INTO Movie (Title, Summary, Language, Duration, Release_date)VALUES (
'The Fate of the Furious', 'When a mysterious woman seduces Dom into the world of terrorism
 and a betrayal of those closest to him, the crew face trials that will test them as never before.',
 'English', '2h 16min',
20170314);


INSERT INTO Movie (Title, Summary, Language, Duration, Release_date)VALUES (
'Spark: A Space Tail', 'Spark, a teenage monkey and his friends, Chunk and Vix, are on a mission to regain
 Planet Bana - a kingdom overtaken by the evil overlord Zhong.', 'English', '1h 30min',
20170314);

INSERT INTO Movie (Title, Summary, Language, Duration, Release_date)VALUES (
'The Lost City of Z', 'A true-life drama, centering on British explorer Col. Percival Fawcett, who
 disappeared while searching for a mysterious city in the Amazon in the 1920s.', 'English', '2h 21min',
20170314);

INSERT INTO Movie (Title, Summary, Language, Duration, Release_date)VALUES (
'Norman', 'Norman Oppenheimer is a small time operator who befriends a young politician at a low point
 in his life.', 'English', '1h 57min',
20170314);

INSERT INTO Movie (Title, Summary, Language, Duration, Release_date)VALUES (
'The Boss Baby', 'A suit-wearing briefcase-carrying baby pairs up with his seven-year old
 brother to stop the dastardly plot of the CEO of Puppy Co.', 'English', '1h 37min',
20170331);

INSERT INTO Movie (Title, Summary, Language, Duration, Release_date)VALUES (
'The LEGO Batman Movie','Bruce Wayne must not only deal with the criminals of Gotham City, 
but also the responsibility of raising a boy he adopted.', 'English', '1h 44min', 20170210
);

INSERT INTO Movie (Title, Summary, Language, Duration, Release_date)VALUES (
'Hidden Figures', 'The story of a team of African-American women mathematicians 
who served a vital role in NASA during the early years of the US space program.', 
'English', '2h 7min', 20170106
);

INSERT INTO Movie (Title, Summary, Language, Duration, Release_date) VALUES (
'La La Land', 'A jazz pianist falls for an aspiring actress in Los Angeles.', 
'English', '2h 8min',20161225
);

INSERT INTO Movie (Title, Summary, Language, Duration, Release_date) VALUES (
'Fifty Shades Darker', 'While Christian wrestles with his inner demons, 
Anastasia must confront the anger and envy of the women who came before her.', 
'English', '1h 58min', 20170210
);

INSERT INTO Movie (Title, Summary, Language, Duration, Release_date)VALUES (
'The Founder', 'The story of Ray Kroc, a salesman who turned two brothers 
innovative fast food eatery, McDonalds, into one of the biggest restaurant 
businesses in the world with a combination of ambition, persistence, and ruthlessness.', 
'English', '1h 55min', 20170120); 

INSERT INTO Movie (Title, Summary, Language, Duration, Release_date) VALUES (
'Passengers', 'A spacecraft traveling to a distant colony planet and transporting 
thousands of people has a malfunction in its sleep chambers. As a result, 
two passengers are awakened 90 years early.', 
'English', '1h 56min', 20161221
);

INSERT INTO Movie (Title, Summary, Language, Duration, Release_date) VALUES (
'Moana', 'In Ancient Polynesia, when a terrible curse incurred by the Demigod 
Maui reaches an impetuous Chieftains daughters island, she answers the 
Oceans call to seek out the Demigod to set things right.', 
'English', '1h 47min', 20161123);

INSERT INTO Movie (Title, Summary, Language, Duration, Release_date) VALUES (
'Unforgettable', 'A woman sets out to make life hell for her ex-husbands new wife', 
'English', '1h 5min', 20160421);
 
 INSERT INTO Movie (Title, Summary, Language, Duration, Release_date) VALUES (
'Born in China', 'Venturing into the wilds of China, "Born in China" captures intimate moments with a panda bear and her growing cub, a young golden monkey who feels displaced by his baby sister, and a mother snow leopard struggling to raise her two cubs.','English', '1h 45min', 20160421);
 
 INSERT INTO Movie (Title, Summary, Language, Duration, Release_date) VALUES (
'Free Fire', 'Set in Boston in 1978, a meeting in a deserted warehouse between two gangs turns into a shootout and a game of survival.', 
'English', '1h 46min', 20160421);

INSERT INTO Movie (Title, Summary, Language, Duration, Release_date) VALUES (
'Phoenix Forgotten', '20 years after three teenagers disappeared in the wake of mysterious lights appearing above Phoenix, Arizona, unseen footage from that night has been discovered, chronicling the final hours of their fateful expedition.', 
'English', '1h 30min', 20160421);
 
 INSERT INTO Movie (Title, Summary, Language, Duration, Release_date) VALUES (
'The Promise', 'Set during the last days of the Ottoman Empire, The Promise follows a love triangle between Michael, a brilliant medical student, the beautiful and sophisticated Ana, and Chris - a renowned American journalist based in Paris.', 
'English', '1h 4min', 20160421);
 
 INSERT INTO Movie (Title, Summary, Language, Duration, Release_date) VALUES (
'Penguins of Madagascar', 'Skipper, Kowalski, Rico and Private join forces with undercover organization The North Wind to stop the villainous Dr. Octavius Brine from destroying the world as we know it.', 
'English', '1h 33min', 20141124);

INSERT INTO Movie (Title, Summary, Language, Duration, Release_date) VALUES (
'The Lego Movie', 'An ordinary Lego construction worker, thought to be the prophesied Special, is recruited to join a quest to stop an evil tyrant from gluing the Lego universe into eternal stasis.', 
'English', '1h 29min', 20140407);
 
 INSERT INTO Movie (Title, Summary, Language, Duration, Release_date) VALUES (
'Veronica Mars', 'Years after walking away from her past as a teenage private eye, Veronica Mars gets pulled back to her hometown - just in time for her high school reunion - in order to help her old flame Logan Echolls, whos embroiled in a murder mystery.', 
'English', '1h 34min', 20140319);
 
 INSERT INTO Movie (Title, Summary, Language, Duration, Release_date) VALUES (
'A Haunted House 2', 'Having exorcised the demons of his ex, Malcolm is starting fresh with his new girlfriend and her two children. After moving into their dream home, however, Malcolm is once again plagued by bizarre paranormal events.', 
'English', '1h 47min', 20140901);

INSERT INTO Movie (Title, Summary, Language, Duration, Release_date) VALUES (
'A Haunted House', 'Malcolm and Kisha move into their dream home, but soon learn a demon also resides there. When Kisha becomes possessed, Malcolm - determined to keep his sex life on track - turns to a priest, a psychic, and a team of ghost-busters for help.', 
'English', '1h 5min', 20130101);

INSERT INTO Movie (Title, Summary, Language, Duration, Release_date) VALUES (
'Teen Beach Movie', 'Two surfing lovers, whose doomed relationship is nearing to a close, find themselves swept into a a dimension traversing wave that sends them into a beach movie musical in the', 
'English', '1h 23min', 20130221);

INSERT INTO Movie (Title, Summary, Language, Duration, Release_date) VALUES (
'Rags', 'Two worlds collide when a hard working teen living with his step father named Charlie Prince bumps into superstar Kadee Worth on the street.', 
'English', '1h 5min', 20120516);

INSERT INTO Movie (Title, Summary, Language, Duration, Release_date) VALUES (
'Move On', 'An unusual road trip beginning in the Netherlands takes a series of unexpected turns through Germany and Eastern Europe.', 
'English', '1h 12min', 20120308);

INSERT INTO Movie (Title, Summary, Language, Duration, Release_date) VALUES (
'Big Time Movie', 'Kendall, James, Carlos and Logan head to London for their first big world tour, but instead get mixed up in a mission to save the world', 
'English', '1h 5min', 20120410);

INSERT INTO Movie (Title, Summary, Language, Duration, Release_date) VALUES (
'Inside Out', 'After young Riley is uprooted from her Midwest life and moved to San Francisco, her emotions - Joy, Fear, Anger, Disgust and Sadness - conflict on how best to navigate a new city, house, and school.', 
'English', '1h 30min', 20150221);
 
 

CREATE TABLE IF NOT EXISTS Tags(
Tag VARCHAR(50) NOT NULL,
TAGGED_AS INT,
FOREIGN KEY (TAGGED_AS) REFERENCES Movie (MID) ON DELETE CASCADE
);

INSERT INTO Tags(Tag, TAGGED_AS)VALUES (  
'pianist',
(SELECT DISTINCT M.MID
 FROM Movie AS M
 WHERE M.Title = 'La La Land')
 );
 
INSERT INTO Tags(Tag, TAGGED_AS)VALUES (  
'actress',
(SELECT DISTINCT M.MID
 FROM Movie AS M
 WHERE M.Title = 'La La Land')
 );

INSERT INTO Tags(Tag, TAGGED_AS)VALUES (  
'jazz',
(SELECT DISTINCT M.MID
 FROM Movie AS M
 WHERE M.Title = 'La La Land')
 );

INSERT INTO Tags(Tag, TAGGED_AS)VALUES (  
'boat',
(SELECT DISTINCT M.MID
 FROM Movie AS M
 WHERE M.Title = 'Fifty Shades Darker')
); 

INSERT INTO Tags(Tag, TAGGED_AS)VALUES (  
'kiss',
(SELECT DISTINCT M.MID
 FROM Movie AS M
 WHERE M.Title = 'Fifty Shades Darker')
);

INSERT INTO Tags(Tag, TAGGED_AS)VALUES (  
'dark',
(SELECT DISTINCT M.MID
 FROM Movie AS M
 WHERE M.Title = 'Fifty Shades Darker')
);

INSERT INTO Tags(Tag, TAGGED_AS)VALUES (  
'music',
(SELECT DISTINCT M.MID
 FROM Movie AS M
 WHERE M.Title = 'La La Land')
); 

# first Logan Tag
INSERT INTO Tags(Tag, TAGGED_AS)VALUES (  
'action',
(SELECT DISTINCT M.MID
 FROM Movie AS M
 WHERE M.Title = 'Logan' AND M.Release_date = 20170303)
 );

INSERT INTO Tags(Tag, TAGGED_AS)VALUES (  
'future',
(SELECT DISTINCT M.MID
 FROM Movie AS M
 WHERE M.Title = 'Logan' AND M.Release_date = 20170303)
 );

INSERT INTO Tags(Tag, TAGGED_AS)VALUES (  
'logan',
(SELECT DISTINCT M.MID
 FROM Movie AS M
 WHERE M.Title = 'Logan' AND M.Release_date = 20170303)
 );

INSERT INTO Tags(Tag, TAGGED_AS)VALUES (  
'love',
(SELECT DISTINCT M.MID
 FROM Movie AS M
 WHERE M.Title = 'Beauty and the Beast' AND M.Release_date = 20170317)
 );

INSERT INTO Tags(Tag, TAGGED_AS)VALUES (  
'Disney',
(SELECT DISTINCT M.MID
 FROM Movie AS M
 WHERE M.Title = 'Beauty and the Beast' AND M.Release_date = 20170317)
 );

INSERT INTO Tags(Tag, TAGGED_AS)VALUES (  
'princess',
(SELECT DISTINCT M.MID
 FROM Movie AS M
 WHERE M.Title = 'Beauty and the Beast' AND M.Release_date = 20170317)
 );
 
 INSERT INTO Tags(Tag, TAGGED_AS)VALUES (  
'rose',
(SELECT DISTINCT M.MID
 FROM Movie AS M
 WHERE M.Title = 'Beauty and the Beast' AND M.Release_date = 20170317)
 );


# Get Out Tags
 INSERT INTO Tags(Tag, TAGGED_AS)VALUES (  
'hypnosis',
(SELECT DISTINCT M.MID
 FROM Movie AS M
 WHERE M.Title = 'Get Out' AND M.Release_date = 20170224)
 );
 
  INSERT INTO Tags(Tag, TAGGED_AS)VALUES (  
'female villain',
(SELECT DISTINCT M.MID
 FROM Movie AS M
 WHERE M.Title = 'Get Out' AND M.Release_date = 20170224)
 );
 
INSERT INTO Tags(Tag, TAGGED_AS)VALUES (  
'violence',
(SELECT DISTINCT M.MID
 FROM Movie AS M
 WHERE M.Title = 'Get Out' AND M.Release_date = 20170224)
 );
 
 #Fate of the Furious Tags
INSERT INTO Tags(Tag, TAGGED_AS)VALUES (  
'sequel',
(SELECT DISTINCT M.MID
 FROM Movie AS M
 WHERE M.Title = 'Fate of the Furious' AND M.Release_date = 20170314)
 );
 
INSERT INTO Tags(Tag, TAGGED_AS)VALUES (  
'violence',
(SELECT DISTINCT M.MID
 FROM Movie AS M
 WHERE M.Title = 'Fate of the Furious' AND M.Release_date = 20170314)
 );
 
 #Spark: A Space Tail
 INSERT INTO Tags(Tag, TAGGED_AS)VALUES (  
'fun',
(SELECT DISTINCT M.MID
 FROM Movie AS M
 WHERE M.Title = 'Spark: A Space Tail' AND M.Release_date = 20170314)
 );
 
  INSERT INTO Tags(Tag, TAGGED_AS)VALUES (  
'family',
(SELECT DISTINCT M.MID
 FROM Movie AS M
 WHERE M.Title = 'Spark: A Space Tail' AND M.Release_date = 20170314)
 );
 
 #The Lost City of Z
  INSERT INTO Tags(Tag, TAGGED_AS)VALUES (  
'intense',
(SELECT DISTINCT M.MID
 FROM Movie AS M
 WHERE M.Title = 'The Lost City of Z' AND M.Release_date = 20170314)
 );
 
INSERT INTO Tags(Tag, TAGGED_AS)VALUES (  
'explorer',
(SELECT DISTINCT M.MID
 FROM Movie AS M
 WHERE M.Title = 'The Lost City of Z' AND M.Release_date = 20170314)
 );
 
INSERT INTO Tags(Tag, TAGGED_AS)VALUES (  
'englishman',
(SELECT DISTINCT M.MID
 FROM Movie AS M
 WHERE M.Title = 'The Lost City of Z' AND M.Release_date = 20170314)
 );
 
#The Boss Baby
 INSERT INTO Tags(Tag, TAGGED_AS)VALUES (  
'baby',
(SELECT DISTINCT M.MID
 FROM Movie AS M
 WHERE M.Title = 'The Boss Baby' AND M.Release_date = 20170231)
 );
 
  INSERT INTO Tags(Tag, TAGGED_AS)VALUES (  
'money',
(SELECT DISTINCT M.MID
 FROM Movie AS M
 WHERE M.Title = 'The Boss Baby' AND M.Release_date = 20170231)
 );
 
   INSERT INTO Tags(Tag, TAGGED_AS)VALUES (  
'cgi animation',
(SELECT DISTINCT M.MID
 FROM Movie AS M
 WHERE M.Title = 'The Boss Baby' AND M.Release_date = 20170231)
 );
 
#Norman
INSERT INTO Tags(Tag, TAGGED_AS)VALUES (  
'politician',
(SELECT DISTINCT M.MID
 FROM Movie AS M
 WHERE M.Title = 'Norman' AND M.Release_date = 20170314)
 );
 
 INSERT INTO Tags(Tag, TAGGED_AS)VALUES (  
'singer',
(SELECT DISTINCT M.MID
 FROM Movie AS M
 WHERE M.Title = 'Norman' AND M.Release_date = 20170314)
 );
 
 INSERT INTO Tags(Tag, TAGGED_AS)VALUES (  
'choir',
(SELECT DISTINCT M.MID
 FROM Movie AS M
 WHERE M.Title = 'Norman' AND M.Release_date = 20170314)
 );
 
 INSERT INTO Tags(Tag, TAGGED_AS)VALUES (  
'newspaper',
(SELECT DISTINCT M.MID
 FROM Movie AS M
 WHERE M.Title = 'Norman' AND M.Release_date = 20170314)
 );

# Moana Tags
 INSERT INTO Tags(Tag, TAGGED_AS)VALUES (  
'island',
(SELECT DISTINCT M.MID
 FROM Movie AS M
 WHERE M.Title = 'Moana')
 );
 
 INSERT INTO Tags(Tag, TAGGED_AS)VALUES (  
'ocean',
(SELECT DISTINCT M.MID
 FROM Movie AS M
 WHERE M.Title = 'Moana')
 );
 
 INSERT INTO Tags(Tag, TAGGED_AS)VALUES (  
'quest',
(SELECT DISTINCT M.MID
 FROM Movie AS M
 WHERE M.Title = 'Moana')
 );
 
 INSERT INTO Tags(Tag, TAGGED_AS)VALUES (  
'monster',
(SELECT DISTINCT M.MID
 FROM Movie AS M
 WHERE M.Title = 'Moana')
 );

# LEGO Batman Tags
# ';joker;batmodbile;dc comics'
INSERT INTO Tags(Tag, TAGGED_AS)VALUES (  
'lego',
(SELECT DISTINCT M.MID
 FROM Movie AS M
 WHERE M.Title = 'The LEGO Batman Movie')
 );

INSERT INTO Tags(Tag, TAGGED_AS)VALUES (  
'joker',
(SELECT DISTINCT M.MID
 FROM Movie AS M
 WHERE M.Title = 'The LEGO Batman Movie')
 );
 
 INSERT INTO Tags(Tag, TAGGED_AS)VALUES (  
'batmobile',
(SELECT DISTINCT M.MID
 FROM Movie AS M
 WHERE M.Title = 'The LEGO Batman Movie')
 );
 
 INSERT INTO Tags(Tag, TAGGED_AS)VALUES (  
'dc comics',
(SELECT DISTINCT M.MID
 FROM Movie AS M
 WHERE M.Title = 'The LEGO Batman Movie')
 );
 
INSERT INTO Tags(Tag, TAGGED_AS)VALUES (  
'nasa',
(SELECT DISTINCT M.MID
 FROM Movie AS M
 WHERE M.Title = 'Hidden Figures')
 ); 

INSERT INTO Tags(Tag, TAGGED_AS)VALUES (  
'mathematician',
(SELECT DISTINCT M.MID
 FROM Movie AS M
 WHERE M.Title = 'Hidden Figures')
 ); 

INSERT INTO Tags(Tag, TAGGED_AS)VALUES (  
'African American',
(SELECT DISTINCT M.MID
 FROM Movie AS M
 WHERE M.Title = 'Hidden Figures')
 ); 
 
INSERT INTO Tags(Tag, TAGGED_AS)VALUES (  
'segregation',
(SELECT DISTINCT M.MID
 FROM Movie AS M
 WHERE M.Title = 'Hidden Figures')
 ); 
 
#ADD GENRES
CREATE TABLE IF NOT EXISTS Genres(
Genre VARCHAR(15) NOT NULL,
CATEGORIZED_AS INT,
FOREIGN KEY (CATEGORIZED_AS) REFERENCES Movie (MID) ON DELETE CASCADE
);

INSERT INTO Genres(Genre, CATEGORIZED_AS)VALUES (  
'Action',
(SELECT DISTINCT M.MID
 FROM Movie AS M
 WHERE M.Title = 'Logan' AND M.Release_date = 20170303)
 );
 
 INSERT INTO Genres(Genre, CATEGORIZED_AS)VALUES (  
'Drama',
(SELECT DISTINCT M.MID
 FROM Movie AS M
 WHERE M.Title = 'Logan' AND M.Release_date = 20170303)
 );
 
 INSERT INTO Genres(Genre, CATEGORIZED_AS)VALUES (  
'Sci-Fi',
(SELECT DISTINCT M.MID
 FROM Movie AS M
 WHERE M.Title = 'Logan' AND M.Release_date = 20170303)
 );

INSERT INTO Genres(Genre, CATEGORIZED_AS)VALUES (  
'Comedy',
(SELECT DISTINCT M.MID
 FROM Movie AS M
 WHERE M.Title = 'La La Land')
); 

INSERT INTO Genres(Genre, CATEGORIZED_AS)VALUES (  
'Drama',
(SELECT DISTINCT M.MID
 FROM Movie AS M
 WHERE M.Title = 'La La Land')
); 

INSERT INTO Genres(Genre, CATEGORIZED_AS)VALUES (  
'Music',
(SELECT DISTINCT M.MID
 FROM Movie AS M
 WHERE M.Title = 'La La Land')
); 

INSERT INTO Genres(Genre, CATEGORIZED_AS)VALUES (  
'Drama',
(SELECT DISTINCT M.MID
 FROM Movie AS M
 WHERE M.Title = 'Fifty Shades Darker')
);

INSERT INTO Genres(Genre, CATEGORIZED_AS)VALUES (  
'Romance',
(SELECT DISTINCT M.MID
 FROM Movie AS M
 WHERE M.Title = 'Fifty Shades Darker')
);

INSERT INTO Genres(Genre, CATEGORIZED_AS)VALUES (  
'Drama',
(SELECT DISTINCT M.MID
 FROM Movie AS M
 WHERE M.Title = 'Beauty and the Beast' AND M.Release_date = 20170317)
 );

INSERT INTO Genres(Genre, CATEGORIZED_AS)VALUES (  
'Horror',
(SELECT DISTINCT M.MID
 FROM Movie AS M
 WHERE M.Title = 'Get Out' AND M.Release_date = 20170224)
);
 
 INSERT INTO Genres(Genre, CATEGORIZED_AS)VALUES (  
'Mystery',
(SELECT DISTINCT M.MID
 FROM Movie AS M
 WHERE M.Title = 'Get Out' AND M.Release_date = 20170224)
 );
 
INSERT INTO Genres(Genre, CATEGORIZED_AS)VALUES (  
'Action',
(SELECT DISTINCT M.MID
 FROM Movie AS M
 WHERE M.Title = 'Fate of the Furious' AND M.Release_date = 20170314)
);
 
INSERT INTO Genres(Genre, CATEGORIZED_AS)VALUES (  
'Crime',
(SELECT DISTINCT M.MID
 FROM Movie AS M
 WHERE M.Title = 'Fate of the Furious' AND M.Release_date = 20170314)
);
 
INSERT INTO Genres(Genre, CATEGORIZED_AS)VALUES (  
'Thriller',
(SELECT DISTINCT M.MID
 FROM Movie AS M
 WHERE M.Title = 'Fate of the Furious' AND M.Release_date = 20170314)
);
 
 #Spark: A Space Tail
   INSERT INTO Genres(Genre, CATEGORIZED_AS)VALUES (  
'Animation',
(SELECT DISTINCT M.MID
 FROM Movie AS M
 WHERE M.Title = 'Spark: A Space Tail' AND M.Release_date = 20170314)
 );
 
   INSERT INTO Genres(Genre, CATEGORIZED_AS)VALUES (  
'Comedy',
(SELECT DISTINCT M.MID
 FROM Movie AS M
 WHERE M.Title = 'Spark: A Space Tail' AND M.Release_date = 20170314)
 );
 
    INSERT INTO Genres(Genre, CATEGORIZED_AS)VALUES (  
'Adventure',
(SELECT DISTINCT M.MID
 FROM Movie AS M
 WHERE M.Title = 'Spark: A Space Tail' AND M.Release_date = 20170314)
 );
 
 #The Lost City of Z
INSERT INTO Genres(Genre, CATEGORIZED_AS)VALUES (  
'Adventure',
(SELECT DISTINCT M.MID
 FROM Movie AS M
 WHERE M.Title = 'The Lost City of Z' AND M.Release_date = 20170314)
 );
 
 INSERT INTO Genres(Genre, CATEGORIZED_AS)VALUES (  
'Biography',
(SELECT DISTINCT M.MID
 FROM Movie AS M
 WHERE M.Title = 'The Lost City of Z' AND M.Release_date = 20170314)
 );
 
 INSERT INTO Genres(Genre, CATEGORIZED_AS)VALUES (  
'Action',
(SELECT DISTINCT M.MID
 FROM Movie AS M
 WHERE M.Title = 'The Lost City of Z' AND M.Release_date = 20170314)
 );
 
 #Norman
 INSERT INTO Genres(Genre, CATEGORIZED_AS)VALUES (  
'Drama',
(SELECT DISTINCT M.MID
 FROM Movie AS M
 WHERE M.Title = 'Norman' AND M.Release_date = 20170314)
 );
 
  INSERT INTO Genres(Genre, CATEGORIZED_AS)VALUES (  
'Thriller',
(SELECT DISTINCT M.MID
 FROM Movie AS M
 WHERE M.Title = 'Norman' AND M.Release_date = 20170314)
 );
 
#The Boss Baby
INSERT INTO Genres(Genre, CATEGORIZED_AS)VALUES (  
'Family',
(SELECT DISTINCT M.MID
 FROM Movie AS M
 WHERE M.Title = 'The Boss Baby' AND M.Release_date = 20170231)
 );
 
 INSERT INTO Genres(Genre, CATEGORIZED_AS)VALUES (  
'Comedy',
(SELECT DISTINCT M.MID
 FROM Movie AS M
 WHERE M.Title = 'The Boss Baby' AND M.Release_date = 20170231)
 );
 
INSERT INTO Genres(Genre, CATEGORIZED_AS)VALUES (  
'Animation',
(SELECT DISTINCT M.MID
 FROM Movie AS M
 WHERE M.Title = 'The Boss Baby' AND M.Release_date = 20170231)
 );
 
INSERT INTO Genres(Genre, CATEGORIZED_AS)VALUES (  
'Animation',
(SELECT DISTINCT M.MID
 FROM Movie AS M
 WHERE M.Title = 'The LEGO Batman Movie')
 );
 
 INSERT INTO Genres(Genre, CATEGORIZED_AS)VALUES (  
'Action',
(SELECT DISTINCT M.MID
 FROM Movie AS M
 WHERE M.Title = 'The LEGO Batman Movie')
 );
 
INSERT INTO Genres(Genre, CATEGORIZED_AS)VALUES (  
'Adventure',
(SELECT DISTINCT M.MID
 FROM Movie AS M
 WHERE M.Title = 'The LEGO Batman Movie')
 );
 
INSERT INTO Genres(Genre, CATEGORIZED_AS)VALUES (  
'Biography',
(SELECT DISTINCT M.MID
 FROM Movie AS M
 WHERE M.Title = 'Hidden Figures')
);

INSERT INTO Genres(Genre, CATEGORIZED_AS)VALUES (  
'Drama',
(SELECT DISTINCT M.MID
 FROM Movie AS M
 WHERE M.Title = 'Hidden Figures')
);

INSERT INTO Genres(Genre, CATEGORIZED_AS)VALUES (  
'History',
(SELECT DISTINCT M.MID
 FROM Movie AS M
 WHERE M.Title = 'Hidden Figures')
);
  
#ADD RATINGS
CREATE TABLE IF NOT EXISTS Ratings(
Rating INTEGER(15) NOT NULL,
Comment VARCHAR(50),
RATED_AS INT,
FOREIGN KEY (RATED_AS) REFERENCES Movie (MID) ON DELETE CASCADE
);

# First Logan COmment/Rating
 INSERT INTO Ratings(Rating, Comment, RATED_AS)VALUES (  
'2',
'Dont take your kids!',
(SELECT DISTINCT M.MID
 FROM Movie AS M
 WHERE M.Title = 'Logan' AND M.Release_date = 20170303)
 );

 INSERT INTO Ratings(Rating, Comment, RATED_AS)VALUES (  
'2',
'Too scary!',
(SELECT DISTINCT M.MID
 FROM Movie AS M
 WHERE M.Title = 'Logan' AND M.Release_date = 20170303)
 );
  
INSERT INTO Ratings(Rating, Comment, RATED_AS)VALUES (  
'5',
'Exciting stuff!!',
(SELECT DISTINCT M.MID
 FROM Movie AS M
 WHERE M.Title = 'Logan' AND M.Release_date = 20170303)
 );

INSERT INTO Ratings(Rating, Comment, RATED_AS)VALUES (  
'3',
'Not for the faint of heart.',
(SELECT DISTINCT M.MID
 FROM Movie AS M
 WHERE M.Title = 'Fifty Shades Darker')
 );
 
 INSERT INTO Ratings(Rating, Comment, RATED_AS)VALUES (  
'4',
'Pretty graphic, so be prepared.',
(SELECT DISTINCT M.MID
 FROM Movie AS M
 WHERE M.Title = 'Fifty Shades Darker')
);

INSERT INTO Ratings(Rating, Comment, RATED_AS)VALUES (  
'5',
'Loved the music!',
(SELECT DISTINCT M.MID
 FROM Movie AS M
 WHERE M.Title = 'La La Land')
);

INSERT INTO Ratings(Rating, Comment, RATED_AS)VALUES (  
'2',
'Definitely not for everyone.',
(SELECT DISTINCT M.MID
 FROM Movie AS M
 WHERE M.Title = 'La La Land')
);
 
 INSERT INTO Ratings(Rating, Comment, RATED_AS)VALUES (  
'3',
'Liked the first one better.',
(SELECT DISTINCT M.MID
 FROM Movie AS M
 WHERE M.Title = 'Beauty and the Beast' AND M.Release_date = 20170317)
 );
 
  INSERT INTO Ratings(Rating, Comment, RATED_AS)VALUES (  
'5',
'My kids want to go back!',
(SELECT DISTINCT M.MID
 FROM Movie AS M
 WHERE M.Title = 'Beauty and the Beast' AND M.Release_date = 20170317)
 );
 
INSERT INTO Ratings(Rating, Comment, RATED_AS)VALUES (  
'4',
'Jam packed with suspense!',
(SELECT DISTINCT M.MID
 FROM Movie AS M
 WHERE M.Title = 'Get Out' AND M.Release_date = 20170224)
 );
 
INSERT INTO Ratings(Rating, Comment, RATED_AS)VALUES (  
'5',
'Loved the characters!',
(SELECT DISTINCT M.MID
 FROM Movie AS M
 WHERE M.Title = 'Get Out' AND M.Release_date = 20170224)
 );
 
 INSERT INTO Ratings(Rating, Comment, RATED_AS)VALUES (  
'1',
'Absolutely horrid.',
(SELECT DISTINCT M.MID
 FROM Movie AS M
 WHERE M.Title = 'Get Out' AND M.Release_date = 20170224)
 );
 
 INSERT INTO Ratings(Rating, Comment, RATED_AS)VALUES (  
'5',
'So glad to see the Movie come back.',
(SELECT DISTINCT M.MID
 FROM Movie AS M
 WHERE M.Title = 'The Fate of the Furious' AND M.Release_date = 20170314)
 );
 
  INSERT INTO Ratings(Rating, Comment, RATED_AS)VALUES (  
'3',
'Story line was a little stale.',
(SELECT DISTINCT M.MID
 FROM Movie AS M
 WHERE M.Title = 'The Fate of the Furious' AND M.Release_date = 20170314)
 );
 
  INSERT INTO Ratings(Rating, Comment, RATED_AS)VALUES (  
'4',
'Left me at the edge of my seat.',
(SELECT DISTINCT M.MID
 FROM Movie AS M
 WHERE M.Title = 'The Fate of the Furious' AND M.Release_date = 20170314)
 );
 
 #Spark: A Space Tail
   INSERT INTO Ratings(Rating, Comment, RATED_AS)VALUES (  
'4',
'Fun for the whole family!',
(SELECT DISTINCT M.MID
 FROM Movie AS M
 WHERE M.Title = 'Spark: A Space Tail' AND M.Release_date = 20170314)
 );
 
INSERT INTO Ratings(Rating, Comment, RATED_AS)VALUES (  
'2',
'My kids were under impressed.',
(SELECT DISTINCT M.MID
 FROM Movie AS M
 WHERE M.Title = 'Spark: A Space Tail' AND M.Release_date = 20170314)
 );
 
INSERT INTO Ratings(Rating, Comment, RATED_AS)VALUES (  
'3',
'Just a so-so Movie.',
(SELECT DISTINCT M.MID
 FROM Movie AS M
 WHERE M.Title = 'Spark: A Space Tail' AND M.Release_date = 20170314)
 );
 
#The Lost City of Z
INSERT INTO Ratings(Rating, Comment, RATED_AS)VALUES (  
'3',
'A little too much sadness for the whole family.',
(SELECT DISTINCT M.MID
 FROM Movie AS M
 WHERE M.Title = 'The Lost City of Z' AND M.Release_date = 20170314)
 );
 
 INSERT INTO Ratings(Rating, Comment, RATED_AS)VALUES (  
'5',
'Wow! I loved the plotline.',
(SELECT DISTINCT M.MID
 FROM Movie AS M
 WHERE M.Title = 'The Lost City of Z' AND M.Release_date = 20170314)
 );
 
INSERT INTO Ratings(Rating, Comment, RATED_AS)VALUES (  
'4',
'Extremely thought provoking',
(SELECT DISTINCT M.MID
 FROM Movie AS M
 WHERE M.Title = 'The Lost City of Z' AND M.Release_date = 20170314)
 );
 
 #Norman
INSERT INTO Ratings(Rating, Comment, RATED_AS)VALUES (  
'2',
'Wasnt the best representation of the story.',
(SELECT DISTINCT M.MID
 FROM Movie AS M
 WHERE M.Title = 'Norman' AND M.Release_date = 20170314)
 );
 
 INSERT INTO Ratings(Rating, Comment, RATED_AS)VALUES (  
'3',
'Good Movie to watch with your girlfriends.',
(SELECT DISTINCT M.MID
 FROM Movie AS M
 WHERE M.Title = 'Norman' AND M.Release_date = 20170314)
 );
 
  INSERT INTO Ratings(Rating, Comment, RATED_AS)VALUES (  
'5',
'Such a good story!',
(SELECT DISTINCT M.MID
 FROM Movie AS M
 WHERE M.Title = 'Norman' AND M.Release_date = 20170314)
 );
 
 #The Boss Baby
INSERT INTO Ratings(Rating, Comment, RATED_AS)VALUES (  
'5',
'Hillarious for everyone in my family.',
(SELECT DISTINCT M.MID
 FROM Movie AS M
 WHERE M.Title = 'The Boss Baby' AND M.Release_date = 20170231)
 );
 
INSERT INTO Ratings(Rating, Comment, RATED_AS)VALUES (  
'3',
'The talking baby freaked me out.',
(SELECT DISTINCT M.MID
 FROM Movie AS M
 WHERE M.Title = 'The Boss Baby' AND M.Release_date = 20170231)
 );
 
INSERT INTO Ratings(Rating, Comment, RATED_AS)VALUES (  
'4',
'Made me laugh the whole time!',
(SELECT DISTINCT M.MID
 FROM Movie AS M
 WHERE M.Title = 'The Boss Baby' AND M.Release_date = 20170231)
 );
 
 INSERT INTO Ratings(Rating, Comment, RATED_AS)VALUES (  
'4',
'Great kids Movie.',
(SELECT DISTINCT M.MID
 FROM Movie AS M
 WHERE M.Title = 'The LEGO Batman Movie')
 );
 
INSERT INTO Ratings(Rating, Comment, RATED_AS)VALUES (  
'5',
'Loved it!',
(SELECT DISTINCT M.MID
 FROM Movie AS M
 WHERE M.Title = 'The LEGO Batman Movie')
 );
 
INSERT INTO Ratings(Rating, Comment, RATED_AS)VALUES (  
'5',
'Totally inspirational!',
(SELECT DISTINCT M.MID
 FROM Movie AS M
 WHERE M.Title = 'Hidden Figures')
 );

INSERT INTO Ratings(Rating, Comment, RATED_AS)VALUES (  
'5',
'Brought me to tears.',
(SELECT DISTINCT M.MID
 FROM Movie AS M
 WHERE M.Title = 'Hidden Figures')
 );


 
/* 
CREATE TRIGGER InsertAvgRating
AFTER INSERT ON Ratings
FOR EACH ROW 
UPDATE Movie
SET Avg_rating =
(SELECT AVG(Rating)
FROM Movie AS m
WHERE newRating.mo = m.mo);

CREATE TRIGGER DeleteAvgRating
AFTER DELETE ON Ratings
FOR EACH ROW
UPDATE Movie
SET Avg_rating =
(SELECT AVG(Rating)
FROM Movie AS m
WHERE oldRating.mo = m.mo);
*/

CREATE TABLE Crew
(CID INT NOT NULL AUTO_INCREMENT,
F_Name VARCHAR(45) NOT NULL ,
M_Name VARCHAR(45),
L_Name VARCHAR(45) NOT NULL,
Role VARCHAR(45) NOT NULL,
Bio VARCHAR(300),
Gender VARCHAR(7) NOT NULL,
DOB DATE NOT NULL,
Birthplace VARCHAR(45),
Movie_MID INT,
PRIMARY KEY(CID),
FOREIGN KEY (Movie_MID) REFERENCES Movie(MID) ON DELETE CASCADE);

INSERT INTO Crew (F_Name, M_Name, L_Name, Role, Bio, Gender, DOB, Birthplace, MOVIE_MID)VALUES(
'James', NULL, 'Foley', 'Director', 'James Foley was born on December 28, 1953 in Brooklyn, 
New York City, New York, USA. He is a director, known for At Close Range (1986), 
After Dark, My Sweet (1990) and Glengarry Glen Ross (1992).', 'Male', 19531228, 'Brooklyn, New York City, New York, USA', (SELECT MID FROM Movie WHERE Title = 'Beauty and the Beast'));


INSERT INTO Crew (F_Name, M_Name, L_Name, Role, Bio, Gender, DOB, Birthplace, MOVIE_MID)VALUES(
'Emma', NULL, 'Watson', 'Actress', 'Emma Charlotte Duerre Watson was born in Paris, France, 
to English parents, Jacqueline Luesby and Chris Watson, both lawyers. She moved to Oxfordshire 
when she was five, where she attended the Dragon School.', 'Female', 19900415, 'Paris, France', 6);

INSERT INTO Crew (F_Name, M_Name, L_Name, Role, Bio, Gender, DOB, Birthplace, MOVIE_MID)VALUES(
'Scott', NULL, 'Frank', 'Writer', 'Scott Frank was born on March 10, 1960 in 
Fort Walton Beach, Florida, USA. He is a writer and director, known for Minority Report (2002), 
The Wolverine (2013) and Logan (2017).', 'Male', 19600310, 'Fort Walton Beach, Florida, USA', 2);

INSERT INTO Crew (F_Name, M_Name, L_Name, Role, Bio, Gender, DOB, Birthplace, MOVIE_MID)VALUES(
'Daniel', NULL, 'Kaluuya', 'Actor', 'Daniel Kaluuya was born in 1989 in London, England. 
He is an actor and writer, known for Sicario (2015), Get Out (2017) and Johnny English Reborn (2011).',
 'Male', 19890310, 'London, England, UK', 3);

INSERT INTO Crew (F_Name, M_Name, L_Name, Role, Bio, Gender, DOB, Birthplace, MOVIE_MID)VALUES(
'Chris', 'Paul', 'McKay', 'Director', 'Chris McKay is a director and producer, known for 
The LEGO Batman Movie (2017), Robot Chicken (2005) and Robot Chicken: Star Wars Episode III (2010).', 
'Male', 19730310, 'Lexington, Kentucky, USA', 4);

INSERT INTO Crew (F_Name, M_Name, L_Name, Role, Bio, Gender, DOB, Birthplace, MOVIE_MID)VALUES(
'Taraji', 'P', 'Henson', 'Actress', 'Taraji P. Henson was born on September 11, 1970 
in Washington, District of Columbia, USA as Taraji Penda Henson. She is an actress and producer, 
known for Hidden Figures (2016), Person of Interest (2011) and 
The Curious Case of Benjamin Button (2008).', 'Female', 19700911, 
'Washington, District of Columbia, USA', 5);

INSERT INTO Crew (F_Name, M_Name, L_Name, Role, Bio, Gender, DOB, Birthplace, MOVIE_MID)VALUES(
'Damien', 'Sayre', 'Chazelle', 'Writer', 'Damien Sayre Chazelle is an American director 
and screenwriter. He was born in Providence, Rhode Island.', 'Male', 19850119,
'Providence, Rhode Island, USA', 7);

INSERT INTO Crew (F_Name, M_Name, L_Name, Role, Bio, Gender, DOB, Birthplace, MOVIE_MID)VALUES(
'Nick', NULL, 'Offerman', 'Actor', 'Nick Offerman was born on June 26, 1970 
in Joliet, Illinois, USA. He is an actor and producer, known for Parks and Recreation (2009), 
The Founder (2016) and Fargo (2014). He has been married to Megan Mullally 
since September 20, 2003.', 'Male', 19700626, 'Joliet, Illinois, USA', 8);

INSERT INTO Crew (F_Name, M_Name, L_Name, Role, Bio, Gender, DOB, Birthplace, MOVIE_MID)VALUES(
'Ron', NULL, 'Celements', 'Director', 'Ron Clements was born on April 25, 1953 
in Sioux City, Iowa, USA as Ronald Francis Clements. He is a writer and director, 
known for Aladdin (1992), The Princess and the Frog (2009) and Treasure Planet (2002).', 
'Male', 19530425, 'Sioux City, Iowa, USA', 10);

INSERT INTO Crew (F_Name, M_Name, L_Name, Role, Bio, Gender, DOB, Birthplace, MOVIE_MID)VALUES(
'Jennifer', NULL, 'Lawrence', 'Actress', "Americas Sweetheart and star of the wildly 
popular Hunger Games series, Jennifer Lawrence is the first, and thus far only, person born 
in the 1990s to have received an acting Oscar (for Silver Linings Playbook (2012)).", 
'Female', 19900815, 'Louisville, Kentucky, USA', 9);

INSERT INTO Crew (F_Name, M_Name, L_Name, Role, Bio, Gender, DOB, Birthplace, MOVIE_MID)VALUES(
'Lindsey', NULL, 'Gillaspie', 'Actress', "A rocking girl that works hard.", 
'Female', 19950628, 'Valpairaso, Indiana, USA', 17);

INSERT INTO Crew (F_Name, M_Name, L_Name, Role, Bio, Gender, DOB, Birthplace, MOVIE_MID)VALUES(
'Michele', NULL, 'Gillaspie', 'Director', "Loves to work with family and play with kids.", 
'Female', 19640821, 'Lexington, Kentucky, USA', 16);

INSERT INTO Crew (F_Name, M_Name, L_Name, Role, Bio, Gender, DOB, Birthplace, MOVIE_MID)VALUES(
'Cole', 'Thomas', 'Tipton', 'Playwriter', "Is a tremendously amazing writer and enjoys his job.", 
'Female', 19950327, 'Louisville, Kentucky, USA', 15);

INSERT INTO Crew (F_Name, M_Name, L_Name, Role, Bio, Gender, DOB, Birthplace, MOVIE_MID)VALUES(
'Emily', NULL, 'Daley', 'Stage Engineer', "A methodical worker that enjoys organizing the stage well.", 
'Female', 19950815, 'Louisville, Kentucky, USA', 11);

INSERT INTO Crew (F_Name, M_Name, L_Name, Role, Bio, Gender, DOB, Birthplace, MOVIE_MID)VALUES(
'Aliah', NULL, 'Fueller', 'Supporting Actress', "Switched from a dental student to aspiring actress.", 
'Female', 19940416, 'Hoptown, Kentucky, USA', 19);

INSERT INTO Crew (F_Name, M_Name, L_Name, Role, Bio, Gender, DOB, Birthplace, MOVIE_MID)VALUES(
'Tom', NULL, 'Ford', 'Director', "Enjoys long walks on the beach.", 
'Male', 19550216, 'Los Angeles, California, USA', 16);

INSERT INTO Crew (F_Name, M_Name, L_Name, Role, Bio, Gender, DOB, Birthplace, MOVIE_MID)VALUES(
'Janet', NULL, 'Jackson', 'Supporting Actress', "Trying to get away from Michael's shadow", 
'Female', 19940416, 'Phoenix, Arizona, USA', 14);

INSERT INTO Crew (F_Name, M_Name, L_Name, Role, Bio, Gender, DOB, Birthplace, MOVIE_MID)VALUES(
'Matt', NULL, 'Jones', 'Supporting Actor', "KSR host.", 
'Male', 19550409, 'Richmond, Kentucky, USA', 15);

INSERT INTO Crew (F_Name, M_Name, L_Name, Role, Bio, Gender, DOB, Birthplace, MOVIE_MID)VALUES(
'The', NULL, 'Rock', 'Lead Actor', "Dwayne is an amazing actor who loves to workout", 
'Male', 19700216, 'New York, New York, USA', 12);

INSERT INTO Crew (F_Name, M_Name, L_Name, Role, Bio, Gender, DOB, Birthplace, MOVIE_MID)VALUES(
'Selena', NULL, 'Gomez', 'Supporting Actress', "Great to work with and loves her job.", 
'Female', 19940416, 'Owensboro, Kentucky, USA', 22);

INSERT INTO Crew (F_Name, M_Name, L_Name, Role, Bio, Gender, DOB, Birthplace, MOVIE_MID)VALUES(
'Brad', NULL, 'Pitt', 'Actor', "Has worked on over 20 films.", 
'Male', 19640416, 'Michigan, USA', 23);

INSERT INTO Crew (F_Name, M_Name, L_Name, Role, Bio, Gender, DOB, Birthplace, MOVIE_MID)VALUES(
'Brandon', NULL, 'Epps', 'Supporting Actor', "Grew up in poverty and now made it.", 
'Male', 19490413, 'Louisville, KY, USA', 24);

INSERT INTO Crew (F_Name, M_Name, L_Name, Role, Bio, Gender, DOB, Birthplace, MOVIE_MID)VALUES(
'Tate', NULL, 'Preece', 'Director', "Lame guy.", 
'Male', 19960416, 'Scott, Kentucky, USA', 23);

INSERT INTO Crew (F_Name, M_Name, L_Name, Role, Bio, Gender, DOB, Birthplace, MOVIE_MID)VALUES(
'Drew', NULL, 'Crum', 'Supporting Actor', "Average performer.", 
'Male', 19940312, 'Pikesville, Kentucky, USA', 25);

INSERT INTO Crew (F_Name, M_Name, L_Name, Role, Bio, Gender, DOB, Birthplace, MOVIE_MID)VALUES(
'Logan', NULL, 'Nichols', 'Screen writer', "Very organized and loves people.", 
'Male', 19950903, 'Paducah, Kentucky, USA', 26);

INSERT INTO Crew (F_Name, M_Name, L_Name, Role, Bio, Gender, DOB, Birthplace, MOVIE_MID)VALUES(
'Shelby', NULL, 'Douglas', 'Director', "Enjoys long walks on the beach.", 
'Male', 19950915, 'San Francisco, CA, USA', 30);

INSERT INTO Crew (F_Name, M_Name, L_Name, Role, Bio, Gender, DOB, Birthplace, MOVIE_MID)VALUES(
'Adam', NULL, 'Douglas', 'Scripter', "Helped with many hockey films.", 
'Male', 1990405, 'Houston, TX, USA', 30);

INSERT INTO Crew (F_Name, M_Name, L_Name, Role, Bio, Gender, DOB, Birthplace, MOVIE_MID)VALUES(
'Lucas', NULL, 'Anderson', 'Actor', "Has done many car scenes.", 
'Male', 19940920, 'Orlando, FL, USA', 26);

INSERT INTO Crew (F_Name, M_Name, L_Name, Role, Bio, Gender, DOB, Birthplace, MOVIE_MID)VALUES(
'Aliah', NULL, 'Fueller', 'Director', "Extremely hyper and photogenic.", 
'Male', 19950302, 'Paducah, Kentucky, USA', 29);

INSERT INTO Crew (F_Name, M_Name, L_Name, Role, Bio, Gender, DOB, Birthplace, MOVIE_MID)VALUES(
'Ryan', NULL, 'Morales', 'Screen writer', "Very organized.", 
'Male', 19950903, 'Paducah, Kentucky, USA', 28);


CREATE TABLE IF NOT EXISTS User(
UID int(11) NOT NULL AUTO_INCREMENT,
userRole varchar(10) NOT NULL,
userEmail varchar(60) NOT NULL,
userPass varchar(255) NOT NULL,
Crew_Edit_CID INT,
Movie_Edit_MID INT,
Movie_Rating_MID INT,
PRIMARY KEY(UID),
UNIQUE KEY userEmail (userEmail),
FOREIGN KEY (Crew_Edit_CID) REFERENCES Crew(CID) ON DELETE CASCADE,
FOREIGN KEY (Movie_Edit_MID) REFERENCES Movie(MID) ON DELETE CASCADE,
FOREIGN KEY (Movie_Rating_MID) REFERENCES Movie(MID) ON DELETE CASCADE
)ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

INSERT INTO User(userRole, userEmail, userPass)VALUES (
'dba', 'adam.walls@uky.edu', sha2('password', 256)
);

INSERT INTO User(userRole, userEmail, userPass)VALUES (
'manager', 'adamsmail@yahoo.com', sha2('password', 256)
);

INSERT INTO User(userRole, userEmail, userPass)VALUES (
'user', 'email@aol.com', sha2('pwdsR4sqrs', 256));

INSERT INTO User(userRole, userEmail, userPass)VALUES (
'user', 'email@gmail.com', sha2('pwdsR4sqrs0', 256));

INSERT INTO User(userRole, userEmail, userPass)VALUES (
'manager', 'email@yahoo.com', sha2('pwdsR4sqrs1', 256));

INSERT INTO User (userRole, userEmail, userPass)VALUES (
'user','crazyMovieFan1000@yahoo.com', sha2('titanicForDayz!', 256)
);

INSERT INTO User (userRole, userEmail, userPass)VALUES (
'user', 'princessPaul@gmail.com', sha2('cinderella45?', 256)
);

INSERT INTO User (userRole, userEmail, userPass)VALUES (
'user', 'actionHero13@aol.com', sha2('password321', 256)
);

INSERT INTO User (userRole, userEmail, userPass)VALUES (
'user', 'musicKid42@gmail.com', sha2('beatlesPW', 256)
);

INSERT INTO User (userRole, userEmail, userPass)VALUES (
'manager', 'lmgillaspie@aol.com', sha2('lame222', 256)
);
INSERT INTO User (userRole, userEmail, userPass)VALUES (
'user', 'coolkid@aol.com', sha2('holla22', 256)
);
INSERT INTO User (userRole, userEmail, userPass)VALUES (
'user', 'lindsey.gillaspie@gmai.com', sha2('woohoo', 256)
);
INSERT INTO User (userRole, userEmail, userPass)VALUES (
'manager', 'funlovin@aol.com', sha2('yellow', 256)
);
INSERT INTO User (userRole, userEmail, userPass)VALUES (
'user', 'claim@aol.com', sha2('colorred', 256)
);

INSERT INTO User (userRole, userEmail, userPass)VALUES (
'user', 'coolGirl@gmail.com', sha2('watchout', 256)
);
INSERT INTO User (userRole, userEmail, userPass)VALUES (
'manager', 'hollaa@aol.com', sha2('funstuff', 256)
);
INSERT INTO User (userRole, userEmail, userPass)VALUES (
'manager', 'singlelady@yahoo.com', sha2('lordlordy', 256)
);
INSERT INTO User (userRole, userEmail, userPass)VALUES (
'user', 'goodGirl@mail.com', sha2('coolio', 256)
);
INSERT INTO User (userRole, userEmail, userPass)VALUES (
'user', 'weirdo@aol.com', sha2('coolcool', 256)
);

INSERT INTO User (userRole, userEmail, userPass)VALUES (
'user', 'haveFun@aol.com', sha2('coolcool', 256)
);
INSERT INTO User (userRole, userEmail, userPass)VALUES (
'manager', 'havEFun@gmail.com', sha2('lamelame', 256)
);
INSERT INTO User (userRole, userEmail, userPass)VALUES (
'user', 'weirdo@yahoo.com', sha2('computer', 256)
);
INSERT INTO User (userRole, userEmail, userPass)VALUES (
'user', 'funBoi@aol.com', sha2('phonecord', 256)
);
INSERT INTO User (userRole, userEmail, userPass)VALUES (
'user', 'whycry@aol.com', sha2('hypeeeeee', 256)
);
INSERT INTO User (userRole, userEmail, userPass)VALUES (
'manager', 'givehugs@aol.com', sha2('coolcool', 256)
);
INSERT INTO User (userRole, userEmail, userPass)VALUES (
'user', 'couches@yahoo.com', sha2('pillowsrock', 256)
);
INSERT INTO User (userRole, userEmail, userPass)VALUES (
'user', 'speedway@aol.com', sha2('chargemycomp', 256)
);
INSERT INTO User (userRole, userEmail, userPass)VALUES (
'user', 'weirdo@gmail.com', sha2('gasrocks1', 256)
);
INSERT INTO User (userRole, userEmail, userPass)VALUES (
'user', 'ilovemycar@aol.com', sha2('losertimestwo', 256)
);
INSERT INTO User (userRole, userEmail, userPass)VALUES (
'user', 'funTimes@gmail.com', sha2('coolcool', 256)
);




/*
select count(*) from User;
select count(*) from Crew;
select count(*) from Tags;
select count(*) from Genres;
select count(*) from Ratings;
select count(*) from Movie;

select * from Movie where Title Like '%The Hobbit%';
select * from crew where MOVIE_MID = 1;
SELECT * FROM Ratings; #WHERE RATED_AS = 2;
select * from Movie, Crew WHERE (F_Name LIKE '%James%' OR L_NAME LIKE '%Foley%') AND MOVIE_MID = MID;
*/

/*
grant all privileges 
on *.*
to 'user'@'%'
identified by 'password'; 

select AVG(Rating) From Movie, Ratings WHERE RATED_AS = 1;
*/