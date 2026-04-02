SELECT
    o.nome AS organizzazione,
    a.nome AS asset,
    a.tipo,
    a.criticita,
    a.stato
FROM organizzazione o
JOIN area ar ON o.id_organizzazione = ar.id_organizzazione
JOIN ufficio u ON ar.id_area = u.id_area
JOIN asset a ON u.id_ufficio = a.id_ufficio
WHERE a.criticita = 'Alta';