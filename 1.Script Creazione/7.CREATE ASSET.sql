CREATE TABLE asset (
    id_asset INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    tipo VARCHAR(100) NOT NULL,
    criticita VARCHAR(50) NOT NULL,
    stato VARCHAR(50) NOT NULL,
    id_ufficio INT NOT NULL,
    FOREIGN KEY (id_ufficio)
        REFERENCES ufficio(id_ufficio)
);