CREATE TABLE organizzazione (
    id_organizzazione INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    tipo VARCHAR(100),
    data_creazione TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);