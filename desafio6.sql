SELECT
	MIN(planos.plano_valor) AS faturamento_minimo,
  MAX(planos.plano_valor) AS faturamento_maximo,
	ROUND((SUM(planos.plano_valor)/COUNT(usuarios.usuario_nome)), 2) AS faturamento_medio,
  SUM(planos.plano_valor) AS faturamento_total
FROM
	SpotifyClone.usuarios AS usuarios
JOIN
	SpotifyClone.planos AS planos
ON
	usuarios.plano_id = planos.plano_id;
