SELECT
  COUNT(usuarios.usuario_nome) AS quantidade_musicas_no_historico
FROM
  SpotifyClone.reproducoes AS reproducoes
JOIN
	SpotifyClone.usuarios AS usuarios
ON
	reproducoes.usuario_id = usuarios.usuario_id
GROUP BY reproducoes.usuario_id
HAVING reproducoes.usuario_id = 3;
