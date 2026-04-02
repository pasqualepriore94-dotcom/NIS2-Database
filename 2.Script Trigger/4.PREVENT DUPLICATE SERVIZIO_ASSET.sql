DELIMITER $$

CREATE TRIGGER prevent_duplicate_servizio_asset
BEFORE INSERT ON servizio_asset
FOR EACH ROW
BEGIN
    IF EXISTS (
        SELECT 1 
        FROM servizio_asset
        WHERE id_servizio = NEW.id_servizio
        AND id_asset = NEW.id_asset
    ) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Associazione già esistente';
    END IF;
END$$

DELIMITER ;