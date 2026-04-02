DELIMITER $$

CREATE TRIGGER asset_update_trigger
BEFORE UPDATE ON asset
FOR EACH ROW
BEGIN
    INSERT INTO asset_storico (
        id_asset,
        nome,
        tipo,
        criticita,
        stato,
        id_ufficio
    )
    VALUES (
        OLD.id_asset,
        OLD.nome,
        OLD.tipo,
        OLD.criticita,
        OLD.stato,
        OLD.id_ufficio
    );
END$$

DELIMITER ;