CREATE TABLE servizio (
    id_servizio INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    descrizione TEXT,
    criticita VARCHAR(50) NOT NULL,
    id_organizzazione INT NOT NULL,
    FOREIGN KEY (id_organizzazione)
        REFERENCES organizzazione(id_organizzazione)
);