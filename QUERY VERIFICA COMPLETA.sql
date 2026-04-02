SELECT 
    a.id_asset,
    a.nome,
    a.stato AS stato_attuale,
    a.criticita AS criticita_attuale,
    s.stato AS stato_precedente,
    s.criticita AS criticita_precedente,
    s.data_modifica
FROM asset a
LEFT JOIN asset_storico s 
    ON a.id_asset = s.id_asset
WHERE a.id_asset = 1
ORDER BY s.data_modifica DESC;