USE codeup_test_db;

select name as 'Pink Floyd Albums' from albums where artist = 'Pink Floyd';

select release_year as 'Album Year' from albums where name = 'Sgt. Peppers Lonely Hearts Club Band';

select genre as 'Genres of Nevermind' from albums where artist = 'Nirvana';





--The genre for Nevermind
--Which albums were released in the 1990s
--Which albums had less than 20 million certified sales
--All the albums with a genre of "Rock". Why do these query results not include albums with a genre of "Hard rock" or "Progressive rock"?