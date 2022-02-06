SELECT 
  cancao_nome AS nome_musica,
  CASE
    WHEN
      cancao_nome LIKE '%Streets%'
      THEN
        REPLACE(cancao_nome, 'Streets', 'Code Review')
    WHEN
      cancao_nome LIKE '%Her Own%'
      THEN
        REPLACE(cancao_nome, 'Her Own', 'Trybe')
    WHEN
      cancao_nome LIKE '%Inner Fire%'
      THEN
        REPLACE(cancao_nome, 'Inner Fire', 'Project')
    WHEN
      cancao_nome LIKE '%Silly%'
      THEN
        REPLACE(cancao_nome, 'Silly', 'Nice')
    WHEN
      cancao_nome LIKE '%Circus%'
      THEN
        REPLACE(cancao_nome, 'Circus', 'Pull Request')
  END AS novo_nome
FROM
  SpotifyClone.cancoes
HAVING novo_nome IS NOT NULL
ORDER BY nome_musica;
