USE codeup_test_db;

truncate albums;

INSERT INTO albums (artist, name, release_year, genre, sales)
VALUES
    ('John Travolta', 'Grease: The Original Soundtrack from the Motion Picture', '1978', 'Rock and roll', '14.4'),
    ('Led Zeppelin','Led Zeppelin IV','1971','Hard rock, heavy metal, folk, rock','14.4'),
    ('Michael Jackson','Bad','1987','Pop, funk,rock','29.0'),
    ('Alanis Morissette','Jagged Little Pill','1995','Alternative rock','24.4'),
    ('Celine Dion','Lets Talk About Love','1997','Pop, sof rock','19.3'),
    ('The Beatles','Sgt. Peppers Lonely Hearts Club Band','1967','Rock','18.2'),
    ('Patrick Swayze','Dirty Dancing','1987','Pop, rock, R&B','17.9'),
    ('Michael Jackson','Dangerous','1991','Rock, funk, pop','17.3'),
    ('Adele','21','2011','Pop, soul','25.3'),
    ('Celine Dion','Lets Talk About Love','1997','Pop, soft rock','19.3'),
    ('The Beatles','1','2000','Rock','23.4'),
    ('ABBA','Gold: Greatest Hits','1992','Pop, disco','19.4'),
    ('Madonna','The Immaculate Collection','1990','Pop, dance','19.4'),
    ('The Beatles','Abbey Road','1969','Rock','14.4'),
    ('Bruce Springsteen','Born in the U.S.A.','1984','Heartlan rock','19.6'),
    ('Dire Straits','Brothers in Arms','1985','Roots rock, blues rock, soft rock','17.7'),
    ('James Horner','Titanic: Music from the Motion Picture','1997','Film score','18.1'),
    ('Metallica','Metallica','1991','Heavy Metal','25.2'),
    ('Nirvana','Nevermind','1991','Grunge, alternative rock','16.7'),
    ('Pink Floyd','The Wall','1979','Progressive rock','18.7'),
    ('Santana','Supernatural','1999','Latin rock','20.5'),
    ('Guns N Roses','Appetite for Destruction','1987','Hard rock','21.6');
