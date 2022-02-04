SELECT 
  usuarios.usuario_nome AS usuario,
  IF(MAX(YEAR(reproducoes.reproducao_data))<2021, 'Usuário inativo', 'Usuário ativo') AS condicao_usuario
FROM
	SpotifyClone.usuarios AS usuarios
JOIN
  SpotifyClone.reproducoes AS reproducoes
ON
	usuarios.usuario_id = reproducoes.usuario_id
GROUP BY usuario
ORDER BY usuario;
