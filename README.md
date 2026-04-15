📌 Análise da Tabela Não Normalizada

A tabela original apresenta diversos problemas estruturais por concentrar múltiplas entidades em uma única estrutura, o que viola princípios fundamentais da modelagem relacional.

📌 Anomalias Identificadas
Anomalia de Inserção:
Não é possível cadastrar um médico ou convênio sem que exista uma consulta associada, pois todos os dados estão centralizados na mesma tabela.
Anomalia de Atualização:
Caso seja necessário atualizar o nome de um médico, será preciso alterar múltiplos registros, o que aumenta o risco de inconsistência.
Anomalia de Exclusão:
Ao excluir uma consulta, pode-se perder informações importantes relacionadas ao paciente, médico ou convênio.
📌 Dependências Funcionais

As seguintes dependências funcionais podem ser identificadas:

CPF_Paciente → Nome_Paciente, Telefone_Paciente
CRM_Medico → Nome_Medico, Especialidade_Medico
ID_Convenio → Nome_Convenio

Essas dependências indicam redundância de dados e justificam a necessidade de normalização.

📌 Processo de Normalização
Primeira Forma Normal (1NF)

Na 1NF, eliminam-se grupos repetitivos e garante-se que todos os atributos sejam atômicos.
A tabela original já possui atributos atômicos, porém ainda apresenta redundância.

Segunda Forma Normal (2NF)

Na 2NF, elimina-se dependências parciais.
Os dados foram separados em entidades distintas (Paciente, Médico e Convênio), pois seus atributos dependem apenas de suas respectivas chaves primárias.

Terceira Forma Normal (3NF)

Na 3NF, eliminam-se dependências transitivas.
A estrutura final garante que todos os atributos não-chave dependem exclusivamente da chave primária da tabela, sem dependências indiretas.
