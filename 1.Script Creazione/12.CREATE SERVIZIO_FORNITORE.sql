CREATE TABLE servizio_fornitore (
    id_servizio INT NOT NULL,
    id_fornitore INT NOT NULL,
    PRIMARY KEY (id_servizio, id_fornitore),
    FOREIGN KEY (id_servizio)
        REFERENCES servizio(id_servizio),
    FOREIGN KEY (id_fornitore)
        REFERENCES fornitore(id_fornitore)
);