DELIMITER $$

CREATE TRIGGER check_responsabilita_insert
BEFORE INSERT ON responsabilita
FOR EACH ROW
BEGIN
    IF (NEW.id_servizio IS NULL AND NEW.id_asset IS NULL) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Deve essere valorizzato almeno servizio o asset';
    END IF;

    IF (NEW.id_servizio IS NOT NULL AND NEW.id_asset IS NOT NULL) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Non è possibile associare contemporaneamente servizio e asset';
    END IF;
END$$

DELIMITER ;