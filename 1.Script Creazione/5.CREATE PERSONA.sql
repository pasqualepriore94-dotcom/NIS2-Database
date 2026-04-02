CREATE TABLE persona (
    id_persona INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cognome VARCHAR(100) NOT NULL,
    email VARCHAR(255) UNIQUE,
    id_ufficio INT NOT NULL,
    FOREIGN KEY (id_ufficio)
        REFERENCES ufficio(id_ufficio)
);