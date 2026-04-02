CREATE INDEX idx_organizzazione_nome
ON organizzazione(nome);

CREATE INDEX idx_area_nome
ON area(nome_area);

CREATE INDEX idx_ufficio_nome
ON ufficio(nome);

CREATE INDEX idx_persona_cognome
ON persona(cognome);

CREATE INDEX idx_asset_nome
ON asset(nome);

CREATE INDEX idx_servizio_nome
ON servizio(nome);

CREATE INDEX idx_fornitore_nome
ON fornitore(ragione_sociale);