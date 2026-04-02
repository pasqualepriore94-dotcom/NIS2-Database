CREATE TABLE servizio_asset (
    id_servizio INT NOT NULL,
    id_asset INT NOT NULL,
    PRIMARY KEY (id_servizio, id_asset),
    FOREIGN KEY (id_servizio)
        REFERENCES servizio(id_servizio),
    FOREIGN KEY (id_asset)
        REFERENCES asset(id_asset)
);