CREATE TABLE persona_ruolo (
    id_persona INT NOT NULL,
    id_ruolo INT NOT NULL,
    data_inizio DATE,
    data_fine DATE,
    PRIMARY KEY (id_persona, id_ruolo),
    FOREIGN KEY (id_persona)
        REFERENCES persona(id_persona),
    FOREIGN KEY (id_ruolo)
        REFERENCES ruolo(id_ruolo)
);