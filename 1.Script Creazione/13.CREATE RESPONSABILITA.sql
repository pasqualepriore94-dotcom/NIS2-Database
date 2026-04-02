CREATE TABLE responsabilita (
    id_responsabilita INT AUTO_INCREMENT PRIMARY KEY,
    id_persona INT NOT NULL,
    id_ruolo INT NOT NULL,
    id_servizio INT NULL,
    id_asset INT NULL,

    FOREIGN KEY (id_persona, id_ruolo)
        REFERENCES persona_ruolo(id_persona, id_ruolo),

    FOREIGN KEY (id_servizio)
        REFERENCES servizio(id_servizio),

    FOREIGN KEY (id_asset)
        REFERENCES asset(id_asset),

    CONSTRAINT chk_responsabilita_target
    CHECK (
        (id_servizio IS NOT NULL AND id_asset IS NULL)
        OR
        (id_servizio IS NULL AND id_asset IS NOT NULL)
    )
);