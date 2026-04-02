CREATE VIEW vista_profilo_acn AS
SELECT
    o.nome AS organizzazione,
    s.nome AS servizio,
    a.nome AS asset,
    f.ragione_sociale AS fornitore
FROM organizzazione o
JOIN servizio s
    ON o.id_organizzazione = s.id_organizzazione
LEFT JOIN servizio_asset sa
    ON s.id_servizio = sa.id_servizio
LEFT JOIN asset a
    ON sa.id_asset = a.id_asset
LEFT JOIN servizio_fornitore sf
    ON s.id_servizio = sf.id_servizio
LEFT JOIN fornitore f
    ON sf.id_fornitore = f.id_fornitore;