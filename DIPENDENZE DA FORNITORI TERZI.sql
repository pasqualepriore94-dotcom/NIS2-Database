SELECT
    s.nome AS servizio,
    f.ragione_sociale AS fornitore,
    f.tipo_servizio,
    f.contratto
FROM servizio s
JOIN servizio_fornitore sf ON s.id_servizio = sf.id_servizio
JOIN fornitore f ON sf.id_fornitore = f.id_fornitore;