SELECT 
  artistas.artista_nome AS artista,
  albuns.album_nome AS album
FROM
  SpotifyClone.albuns AS albuns
JOIN
	SpotifyClone.artistas AS artistas
ON
	albuns.artista_id = artistas.artista_id
HAVING artista = 'Walter Phoenix'
ORDER BY album;
