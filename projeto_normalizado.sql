-- Tabela paciente
CREATE TABLE paciente (
    cpf VARCHAR(11) PRIMARY KEY,
    nome VARCHAR(100),
    telefone VARCHAR(20)
);

-- Tabela medico
CREATE TABLE medico (
    crm VARCHAR(10) PRIMARY KEY,
    nome VARCHAR(100),
    especialidade VARCHAR(100)
);

-- Tabela convenio
CREATE TABLE convenio (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100)
);

-- Tabela consulta
CREATE TABLE consulta (
    id SERIAL PRIMARY KEY,
    data DATE,
    hora TIME,
    valor NUMERIC(10,2),
    cpf_paciente VARCHAR(11),
    crm_medico VARCHAR(10),
    id_convenio INT,

    FOREIGN KEY (cpf_paciente) REFERENCES paciente(cpf),
    FOREIGN KEY (crm_medico) REFERENCES medico(crm),
    FOREIGN KEY (id_convenio) REFERENCES convenio(id)
);