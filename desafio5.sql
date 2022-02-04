SELECT 
  cancoes.cancao_nome AS cancao,
  COUNT(reproducoes.cancao_id_reproduzida) AS reproducoes
FROM
  SpotifyClone.cancoes AS cancoes
JOIN
  SpotifyClone.reproducoes AS reproducoes
ON
	cancoes.cancao_id = reproducoes.cancao_id_reproduzida
GROUP BY cancao
ORDER BY reproducoes DESC, cancao
LIMIT 2;
