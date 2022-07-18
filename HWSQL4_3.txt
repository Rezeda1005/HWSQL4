SELECT g.name genre, COUNT(s.id_singer) count_singer FROM Genre g
LEFT JOIN Genre_singer s ON g.id = s.id_genre
GROUP BY g.name;


SELECT COUNT(t.id) count_2019_2020 FROM Track t
RIGHT JOIN Album a ON t.id_album = a.id
WHERE release_year BETWEEN 2019 AND 2020;


SELECT a.album_title album, AVG(t.duration) avg_duration FROM Track t
RIGHT JOIN Album a ON t.id_album = a.id
GROUP BY a.album_title;


SELECT nickname FROM Singer 
WHERE nickname NOT IN (
	SELECT s.nickname FROM Singer s
	LEFT JOIN Album_singer sa ON s.id = sa.id_singer
	LEFT JOIN Album a ON sa.id_album = a.id
	WHERE release_year = 2020
	);


SELECT DISTINCT c.name_collection collection_with_Madonna FROM Collection c 
JOIN Track_collection tc ON c.id = tc.id_collection
JOIN Track t ON tc.id_track = t.id
JOIN Album a ON t.id_album = a.id
JOIN Album_singer sa ON a.id = sa.id_album
JOIN Singer s ON sa.id_singer = s.id
WHERE s.nickname iLIKE '%%Madonna%%';


SELECT DISTINCT a.album_title FROM Album a 
JOIN Album_singer sa ON a.id = sa.id_album
WHERE sa.id_singer IN (
	SELECT id_singer FROM (
		SELECT gs.id_singer, COUNT(gs.id_genre) FROM Genre_singer gs
		GROUP BY gs.id_singer
		HAVING COUNT(gs.id_genre)>1
		) Subtable1
	);

SELECT track_name FROM Track t 
WHERE id NOT IN (
	SELECT DISTINCT id_track FROM Track_collection); 


SELECT DISTINCT s.nickname FROM Singer s
JOIN Album_singer sa ON s.id = sa.id_singer
WHERE id_album IN (
	SELECT id_album FROM Track
	WHERE duration = (
		SELECT MIN(duration) FROM Track
		)
	);

DROP TABLE IF EXISTS Subtable1;
SELECT a.album_title, COUNT(t.id) amount INTO Subtable1 FROM Album a
JOIN Track t ON a.id = t.id_album
GROUP BY a.album_title; 

SELECT * FROM Subtable1
WHERE amount = (
	SELECT MIN(amount) FROM Subtable1
	);