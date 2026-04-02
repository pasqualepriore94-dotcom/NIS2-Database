CREATE TABLE asset_storico (
    id_versione INT AUTO_INCREMENT PRIMARY KEY,
    id_asset INT NOT NULL,
    nome VARCHAR(255),
    tipo VARCHAR(100),
    criticita VARCHAR(50),
    stato VARCHAR(50),
    id_ufficio INT,
    data_modifica TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);