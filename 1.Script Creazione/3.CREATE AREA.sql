CREATE TABLE area (
    id_area INT AUTO_INCREMENT PRIMARY KEY,
    nome_area VARCHAR(255) NOT NULL,
    id_organizzazione INT NOT NULL,
    FOREIGN KEY (id_organizzazione)
        REFERENCES organizzazione(id_organizzazione)
);