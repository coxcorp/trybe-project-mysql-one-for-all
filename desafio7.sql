SELECT 
  artistas.artista_nome AS artista,
  albuns.album_nome AS album,
  COUNT(seguidor.usuario_id) AS seguidores
FROM
  SpotifyClone.albuns AS albuns
JOIN
	SpotifyClone.artistas AS artistas
ON
	albuns.artista_id = artistas.artista_id
JOIN
	SpotifyClone.usuario_seguindo AS seguidor
ON
	artistas.artista_id = seguidor.seguindo_artista
GROUP BY album, artista
ORDER BY seguidores DESC, artista, album;
