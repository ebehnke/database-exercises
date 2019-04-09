use codeup_test_db;

select * from albums
update albums
set sales = (sales * '10');
select sales from albums;

select name from albums where release_year between '1980' and '1989';
update albums
set release_year = (release_year - 100);
select release_year from albums;

select name from albums where artist = 'Michael Jackson';
update albums
set artist = 'Peter Jackson' where artist = 'Michael Jackson';
select artist from albums;
