CREATE TABLE servizio_asset (
    id_servizio INT,
    id_asset INT,
    PRIMARY KEY (id_servizio, id_asset),
    FOREIGN KEY (id_servizio) REFERENCES servizio(id_servizio),
    FOREIGN KEY (id_asset) REFERENCES asset(id_asset)
);