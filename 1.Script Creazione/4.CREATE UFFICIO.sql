CREATE TABLE ufficio (
    id_ufficio INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    id_area INT NOT NULL,
    FOREIGN KEY (id_area)
        REFERENCES area(id_area)
);