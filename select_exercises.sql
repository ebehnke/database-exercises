USE codeup_test_db;

select name as 'Pink Floyd Albums' from albums where artist = 'Pink Floyd';

select release_year as 'Album Year' from albums where name = 'Sgt. Peppers Lonely Hearts Club Band';

select genre as 'Genres of Nevermind' from albums where artist = 'Nirvana';

select name as 'Albums of the 90s' from albums where release_year >= '1990' and release_year <= '1999';

select name as 'Albums of the 90s' from albums where release_year between '1990' and '1999';

select artist as 'Artist', name as 'Less than 20mil certified sales' from albums where sales < '20.00';

select artist as 'Artist', name as 'Rock Albums' from albums where genre <= 'rock';
