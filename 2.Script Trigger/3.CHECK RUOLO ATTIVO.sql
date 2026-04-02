DELIMITER $$

CREATE TRIGGER check_ruolo_attivo
BEFORE INSERT ON persona_ruolo
FOR EACH ROW
BEGIN
    IF EXISTS (
        SELECT 1 
        FROM persona_ruolo 
        WHERE id_persona = NEW.id_persona
        AND id_ruolo = NEW.id_ruolo
        AND data_fine IS NULL
    ) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Ruolo già attivo per questa persona';
    END IF;
END$$

DELIMITER ;