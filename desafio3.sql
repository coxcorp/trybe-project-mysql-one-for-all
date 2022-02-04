SELECT 
  users.usuario_nome AS usuario,
  COUNT(repro.cancao_id_reproduzida) AS qtde_musicas_ouvidas,
  ROUND(SUM(cancoes.cancao_duracao_segundos/60), 2) AS total_minutos
FROM
  SpotifyClone.usuarios AS users
JOIN
	SpotifyClone.reproducoes AS repro
ON
	users.usuario_id = repro.usuario_id
JOIN
	SpotifyClone.cancoes AS cancoes
ON
	repro.cancao_id_reproduzida = cancoes.cancao_id
GROUP BY usuario
ORDER BY usuario;
