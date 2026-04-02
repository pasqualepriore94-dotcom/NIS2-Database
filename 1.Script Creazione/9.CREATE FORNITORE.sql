CREATE TABLE fornitore (
    id_fornitore INT AUTO_INCREMENT PRIMARY KEY,
    ragione_sociale VARCHAR(255) NOT NULL,
    tipo_servizio VARCHAR(100),
    contratto VARCHAR(255)
);