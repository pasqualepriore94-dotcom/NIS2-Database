SELECT 
    p.nome,
    p.cognome,
    r.nome_ruolo,
    a.nome AS asset,
    a.tipo,
    a.criticita,
    a.stato
FROM responsabilita resp
JOIN persona p 
    ON resp.id_persona = p.id_persona
JOIN ruolo r 
    ON resp.id_ruolo = r.id_ruolo
JOIN asset a 
    ON resp.id_asset = a.id_asset;