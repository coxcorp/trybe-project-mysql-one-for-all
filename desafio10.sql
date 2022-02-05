SELECT 
  cancoes.cancao_nome AS nome,
  COUNT(repro.cancao_id_reproduzida) AS reproducoes
FROM
	SpotifyClone.cancoes AS cancoes
JOIN
  SpotifyClone.reproducoes AS repro
ON
	cancoes.cancao_id = repro.cancao_id_reproduzida
JOIN
	SpotifyClone.usuarios AS usuarios
ON
	repro.usuario_id = usuarios.usuario_id
WHERE
	usuarios.plano_id = 1 OR usuarios.plano_id = 3
GROUP BY cancoes.cancao_nome
ORDER BY reproducoes DESC, nome;
