SELECT
    s.nome AS servizio,
    a.nome AS asset,
    a.tipo,
    a.criticita
FROM servizio s
JOIN servizio_asset sa ON s.id_servizio = sa.id_servizio
JOIN asset a ON sa.id_asset = a.id_asset;