DELIMITER $$

CREATE TRIGGER check_email_persona
BEFORE INSERT ON persona
FOR EACH ROW
BEGIN
    IF NEW.email IS NULL OR NEW.email NOT LIKE '%@%' THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Email non valida';
    END IF;
END$$

DELIMITER ;