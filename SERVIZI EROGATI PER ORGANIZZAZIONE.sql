SELECT
    o.nome AS organizzazione,
    s.nome AS servizio,
    s.descrizione,
    s.criticita
FROM organizzazione o
JOIN servizio s ON o.id_organizzazione = s.id_organizzazione;