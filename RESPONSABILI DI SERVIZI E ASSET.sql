SELECT
    p.nome,
    p.cognome,
    p.email,
    r.nome_ruolo,
    s.nome AS servizio,
    a.nome AS asset
FROM responsabilita resp
JOIN persona p
    ON resp.id_persona = p.id_persona
JOIN ruolo r
    ON resp.id_ruolo = r.id_ruolo
LEFT JOIN servizio s
    ON resp.id_servizio = s.id_servizio
LEFT JOIN asset a
    ON resp.id_asset = a.id_asset;