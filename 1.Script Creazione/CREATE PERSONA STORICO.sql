CREATE TABLE persona_storico (
id INT AUTO_INCREMENT PRIMARY KEY,
id_persona_storico INT NOT NULL,
nome VARCHAR (100),
cognome VARCHAR (100),
email VARCHAR (100),
data_modifica TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);