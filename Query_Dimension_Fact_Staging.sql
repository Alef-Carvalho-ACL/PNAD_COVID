--Selecionando o Banco de dados
USE [FIAP]
GO

SET
    TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;

--Criar Tabela de Staging para armazenar os dados brutos
CREATE TABLE Staging.stgPnadCovid
(
    Ano INT,
    UF INT,
    CAPITAL INT,
    RM_RIDE INT,
    V1008 INT,
    V1012 INT,
    V1013 INT,
    V1016 INT,
    Estrato BIGINT,
    UPA BIGINT,
    V1022 INT,
    V1023 INT,
    V1030 FLOAT,
    V1031 FLOAT,
    V1032 FLOAT,
    posest INT,
    A001 INT,
    A001A INT,
    A001B1 INT,
    A001B2 INT,
    A001B3 INT,
    A002 INT,
    A003 INT,
    A004 INT,
    A005 INT,
    A006 INT,
    A007 INT,
    A008 INT,
    A009 INT,
    B0011 INT,
    B0012 INT,
    B0013 INT,
    B0014 INT,
    B0015 INT,
    B0016 INT,
    B0017 INT,
    B0018 INT,
    B0019 INT,
    B00110 INT,
    B00111 INT,
    B00112 INT,
    B00113 INT,
    B002 INT,
    B0031 INT,
    B0032 INT,
    B0033 INT,
    B0034 INT,
    B0035 INT,
    B0036 INT,
    B0037 INT,
    B0041 INT,
    B0042 INT,
    B0043 INT,
    B0044 INT,
    B0045 INT,
    B0046 INT,
    B005 INT,
    B006 INT,
    B007 INT,
    B008 INT,
    B009A INT,
    B009B INT,
    B009C INT,
    B009D INT,
    B009E INT,
    B009F INT,
    B0101 INT,
    B0102 INT,
    B0103 INT,
    B0104 INT,
    B0105 INT,
    B0106 INT,
    B011 INT,
    C001 INT,
    C002 INT,
    C003 INT,
    C004 INT,
    C005 INT,
    C0051 INT,
    C0052 INT,
    C0053 INT,
    C006 INT,
    C007 INT,
    C007A INT,
    C007B INT,
    C007C INT,
    C007D INT,
    C007E INT,
    C007E1 INT,
    C007E2 INT,
    C007F INT,
    C008 INT,
    C009 INT,
    C009A INT,
    C010 INT,
    C0101 INT,
    C01011 INT,
    C01012 INT,
    C0102 INT,
    C01021 INT,
    C01022 INT,
    C0103 INT,
    C0104 INT,
    C011A INT,
    C011A1 INT,
    C011A11 INT,
    C011A12 INT,
    C011A2 INT,
    C011A21 INT,
    C011A22 INT,
    C012 INT,
    C013 INT,
    C014 INT,
    C015 INT,
    C016 INT,
    C017A INT,
    D0011 INT,
    D0013 INT,
    D0021 INT,
    D0023 INT,
    D0031 INT,
    D0033 INT,
    D0041 INT,
    D0043 INT,
    D0051 INT,
    D0053 INT,
    D0061 INT,
    D0063 INT,
    D0071 INT,
    D0073 INT,
    E001 INT,
    E0021 INT,
    E0022 INT,
    E0023 INT,
    E0024 INT,
    F001 INT,
    F0021 INT,
    F0022 INT,
    F002A1 INT,
    F002A2 INT,
    F002A3 INT,
    F002A4 INT,
    F002A5 INT,
    F0061 INT,
    F006 INT
);

-- Drop a tabela se a mesma existir
DROP TABLE IF EXISTS Dimensions.dimSaudeFebre;

-- Criação da Tabela de Dimensão Saúde Febre sem IDENTITY
CREATE TABLE Dimensions.dimSaudeFebre (
  Chave_Febre INT PRIMARY KEY,
  Teve_Febre VARCHAR(50)
);

-- Inserção de dados na Tabela de Dimensão Saúde Febre
-- Aqui, a chave é definida explicitamente com base no valor do campo B0011.
INSERT INTO Dimensions.dimSaudeFebre (Chave_Febre, Teve_Febre)
VALUES
  (0, 'Não Mapeado'),
  (1, 'Sim'),
  (2, 'Não'),
  (3, 'Não sabe'),
  (9, 'Ignorado');

-- Drop a tabela se a mesma existir
DROP TABLE IF EXISTS Dimensions.dimSaudeTosse;

-- Criação da Tabela de Dimensão Saúde Tosse
CREATE TABLE Dimensions.dimSaudeTosse (
  Chave_Tosse INT PRIMARY KEY,
  Teve_Tosse VARCHAR(50)
);

-- Inserção de dados na Tabela de Dimensão Saúde Tosse
INSERT INTO Dimensions.dimSaudeTosse (Chave_Tosse, Teve_Tosse)
VALUES
  (0, 'Não Mapeado'),
  (1, 'Sim'),
  (2, 'Não'),
  (3, 'Não sabe'),
  (9, 'Ignorado');

-- Drop a tabela se a mesma existir
DROP TABLE IF EXISTS Dimensions.dimSaudeDificuldadeRespirar;

-- Criação da Tabela de Dimensão Saúde Respirar
CREATE TABLE Dimensions.dimSaudeDificuldadeRespirar (
  Chave_Dificuldade_Respirar INT PRIMARY KEY,
  Teve_Dificuldade_Respirar VARCHAR(50)
);

-- Inserção de dados na Tabela de Dimensão Saúde Respirar
INSERT INTO Dimensions.dimSaudeDificuldadeRespirar (Chave_Dificuldade_Respirar, Teve_Dificuldade_Respirar)
VALUES
  (0, 'Não Mapeado'),
  (1, 'Sim'),
  (2, 'Não'),
  (3, 'Não sabe'),
  (9, 'Ignorado');

-- Drop a tabela se a mesma existir
DROP TABLE IF EXISTS Dimensions.dimSaudeDorGarganta;

-- Criação da Tabela de Dimensão Saúde Dor Garganta
CREATE TABLE Dimensions.dimSaudeDorGarganta (
  Chave_Dor_Garganta INT PRIMARY KEY,
  Teve_Dor_Garganta VARCHAR(50)
);

-- Inserção de dados na Tabela de Dimensão Saúde Dor Garganta
INSERT INTO Dimensions.dimSaudeDorGarganta (Chave_Dor_Garganta, Teve_Dor_Garganta)
VALUES
  (0, 'Não Mapeado'),
  (1, 'Sim'),
  (2, 'Não'),
  (3, 'Não sabe'),
  (9, 'Ignorado');

-- Drop a tabela se a mesma existir
DROP TABLE IF EXISTS Dimensions.dimSaudeDorCabeca;

-- Criação da Tabela de Dimensão Saúde Dor Cabeça
CREATE TABLE Dimensions.dimSaudeDorCabeca (
  Chave_Dor_Cabeca INT PRIMARY KEY,
  Teve_Dor_Cabeca VARCHAR(50)
);

-- Inserção de dados na Tabela de Dimensão Saúde Dor Cabeça
INSERT INTO Dimensions.dimSaudeDorCabeca (Chave_Dor_Cabeca, Teve_Dor_Cabeca)
VALUES
  (0, 'Não Mapeado'),
  (1, 'Sim'),
  (2, 'Não'),
  (3, 'Não sabe'),
  (9, 'Ignorado');

-- Drop a tabela se a mesma existir
DROP TABLE IF EXISTS Dimensions.dimSaudeDorPeito;

-- Criação da Tabela de Dimensão Saúde Dor Peito
CREATE TABLE Dimensions.dimSaudeDorPeito (
  Chave_Dor_Peito INT PRIMARY KEY,
  Teve_Dor_Peito VARCHAR(50)
);

-- Inserção de dados na Tabela de Dimensão Saúde Dor Peito
INSERT INTO Dimensions.dimSaudeDorPeito (Chave_Dor_Peito, Teve_Dor_Peito)
VALUES
  (0, 'Não Mapeado'),
  (1, 'Sim'),
  (2, 'Não'),
  (3, 'Não sabe'),
  (9, 'Ignorado');

-- Drop a tabela se a mesma existir
DROP TABLE IF EXISTS Dimensions.dimSaudeResultadoTeste;

-- Criação da Tabela de Dimensão Saúde Resultado Teste
CREATE TABLE Dimensions.dimSaudeResultadoTeste (
  Chave_Resultado_Test INT PRIMARY KEY,
  Resultado_Test VARCHAR(50)
);

-- Inserção de dados na Tabela de Dimensão Saúde Resultado Teste
INSERT INTO Dimensions.dimSaudeResultadoTeste (Chave_Resultado_Test, Resultado_Test)
VALUES
  (0, 'Não aplicável'),
  (1, 'Positivo'),
  (2, 'Negativo'),
  (3, 'Inconclusivo'),
  (4, 'Ainda não recebeu o resultado'),
  (9, 'Ignorado');

-- Drop a tabela se a mesma existir
DROP TABLE IF EXISTS Dimensions.dimSaudeRestringiuContato;

-- Criação da Tabela de Dimensão Saúde Restringiu Contato
CREATE TABLE Dimensions.dimSaudeRestringiuContato (
  Chave_Restringiu_Contato INT PRIMARY KEY,
  Restringiu_Contato VARCHAR(255)
);

-- Inserção de dados na Tabela de Dimensão Saúde Restringiu Contato
INSERT INTO Dimensions.dimSaudeRestringiuContato (Chave_Restringiu_Contato, Restringiu_Contato)
VALUES
  (0, 'Não Mapeado'),
  (1, 'Não fez restrição, levou vida normal como antes da pandemia'),
  (2, 'Reduziu o contato com as pessoas, mas continuou saindo de casa para trabalho ou atividades não essenciais e/ou recebendo visitas'),
  (3, 'Ficou em casa e só saiu em caso de necessidade básica'),
  (4, 'Ficou rigorosamente em casa'),
  (9, 'Ignorado');

-- Drop a tabela se a mesma existir
DROP TABLE IF EXISTS Dimensions.dimTrabalhoSemanaReferencia;

-- Criação da Tabela de Dimensão Trabalho Semana Referência
CREATE TABLE Dimensions.dimTrabalhoSemanaReferencia (
  Chave_Semana_Referencia INT PRIMARY KEY,
  Trabalhava_Semana_Referencia VARCHAR(50)
);

-- Inserção de dados na Tabela de Dimensão Trabalho Semana Referência
INSERT INTO Dimensions.dimTrabalhoSemanaReferencia (Chave_Semana_Referencia, Trabalhava_Semana_Referencia)
VALUES
  (0, 'Não Mapeado'),
  (1, 'Sim'),
  (2, 'Não');

-- Drop a tabela se a mesma existir
DROP TABLE IF EXISTS Dimensions.dimTrabalhoAfastadoSemanaReferencia;

-- Criação da Tabela de Dimensão Trabalho Afastado Semana Referência
CREATE TABLE Dimensions.dimTrabalhoAfastadoSemanaReferencia (
  Chave_Afastado_Semana_Referencia INT PRIMARY KEY,
  Afastado_Semana_Referencia VARCHAR(50)
);

-- Inserção de dados na Tabela de Dimensão Trabalho Afastado Semana Referência
INSERT INTO Dimensions.dimTrabalhoAfastadoSemanaReferencia (Chave_Afastado_Semana_Referencia, Afastado_Semana_Referencia)
VALUES
  (0, 'Não Mapeado'),
  (1, 'Sim'),
  (2, 'Não');

-- Drop a tabela se a mesma existir
DROP TABLE IF EXISTS Dimensions.dimTrabalhoPrincipalFuncao;

-- Criação da Tabela de Dimensão Trabalho Principal Função
CREATE TABLE Dimensions.dimTrabalhoPrincipalFuncao (
  Chave_Principal_Funcao INT PRIMARY KEY,
  Principal_Funcao VARCHAR(255)
);

-- Inserção de dados na Tabela de Dimensão Trabalho Principal Função
INSERT INTO Dimensions.dimTrabalhoPrincipalFuncao (Chave_Principal_Funcao, Principal_Funcao)
VALUES
  (0, 'Não aplicável'),
  (1, 'Empregado doméstico, diarista, cozinheiro (em domicílios particulares)'),
  (2, 'Faxineiro, auxiliar de limpeza etc. (em empresa pública ou privada)'),
  (3, 'Auxiliar de escritório, escriturário'),
  (4, 'Secretária, recepcionista'),
  (5, 'Operador de Telemarketing'),
  (6, 'Comerciante (dono do bar, da loja etc.)'),
  (7, 'Balconista, vendedor de loja'),
  (8, 'Vendedor a domicílio, representante de vendas, vendedor de catálogo (Avon, Natura etc.)'),
  (9, 'Vendedor ambulante (feirante, camelô, comerciante de rua, quiosque)'),
  (10, 'Cozinheiro e garçom (de restaurantes, empresas)'),
  (11, 'Padeiro, açougueiro e doceiro'),
  (12, 'Agricultor, criador de animais, pescador, silvicultor e jardineiro'),
  (13, 'Auxiliar da agropecuária (colhedor de frutas, boia fria, etc.)'),
  (14, 'Motorista (de aplicativo, de taxi, de van, de mototáxi, de ônibus)'),
  (15, 'Motorista de caminhão (caminhoneiro)'),
  (16, 'Motoboy'),
  (17, 'Entregador de mercadorias (de restaurante, de farmácia, de loja, Uber Eats, IFood, Rappy etc.)'),
  (18, 'Pedreiro, servente de pedreiro, pintor, eletricista, marceneiro'),
  (19, 'Mecânico de veículos, máquinas industriais etc.'),
  (20, 'Artesão, costureiro e sapateiro'),
  (21, 'Cabeleireiro, manicure e afins'),
  (22, 'Operador de máquinas, montador na indústria'),
  (23, 'Auxiliar de produção, de carga e descarga'),
  (24, 'Professor da educação infantil, de ensino fundamental, médio ou superior'),
  (25, 'Pedagogo, professor de idiomas, música, arte e reforço escolar'),
  (26, 'Médico, enfermeiro, profissionais de saúde de nível superior'),
  (27, 'Técnico, profissional da saúde de nível médio'),
  (28, 'Cuidador de crianças, doentes ou idosos'),
  (29, 'Segurança, vigilante, outro trabalhador dos serviços de proteção'),
  (30, 'Policial civil'),
  (31, 'Porteiro, zelador'),
  (32, 'Artista, religioso (padre, pastor etc.)'),
  (33, 'Diretor, gerente, cargo político ou comissionado'),
  (34, 'Outra profissão de nível superior (advogado, engenheiro, contador, jornalista etc.)'),
  (35, 'Outro técnico ou profissional de nível médio'),
  (36, 'Outros');

-- Drop a tabela se a mesma existir
DROP TABLE IF EXISTS Dimensions.dimSexo;

-- Criação da Tabela de Dimensão Sexo
CREATE TABLE Dimensions.dimSexo (
  Chave_Sexo INT PRIMARY KEY,
  Sexo VARCHAR(50)
);

-- Inserção de dados na Tabela de Dimensão Sexo
INSERT INTO Dimensions.dimSexo (Chave_Sexo, Sexo)
VALUES
  (1, 'Masculino'),
  (2, 'Feminino'),
  (0, 'Outro');

-- Drop a tabela se a mesma existir
DROP TABLE IF EXISTS Dimensions.dimCorRaca;

-- Criação da Tabela de Dimensão CorRaca
CREATE TABLE Dimensions.dimCorRaca (
  Chave_Cor_Raca INT PRIMARY KEY,
  Cor_Raca VARCHAR(50)
);

-- Inserção de dados na Tabela de Dimensão CorRaca
INSERT INTO Dimensions.dimCorRaca (Chave_Cor_Raca, Cor_Raca)
VALUES
  (1, 'Branca'),
  (2, 'Preta'),
  (3, 'Amarela'),
  (4, 'Parda'),
  (5, 'Indígena'),
  (9, 'Ignorado'); 

-- Drop a tabela se a mesma existir
DROP TABLE IF EXISTS Dimensions.dimSabeLerEscrever;

-- Criação da Tabela de Dimensão SabeLerEscrever
CREATE TABLE Dimensions.dimSabeLerEscrever (
  Chave_Sabe_Ler_Escrever INT PRIMARY KEY,
  Sabe_Ler_Escrever VARCHAR(100)
);

-- Inserção de dados na Tabela de Dimensão SabeLerEscrever
INSERT INTO Dimensions.dimSabeLerEscrever (Chave_Sabe_Ler_Escrever, Sabe_Ler_Escrever)
VALUES
  (1, 'Sem instrução'),
  (2, 'Fundamental incompleto'),
  (3, 'Fundamental completo'),
  (4, 'Médio incompleto'),
  (5, 'Médio completo'),
  (6, 'Superior incompleto'),
  (7, 'Superior completo'),
  (8, 'Pós-graduação, mestrado ou doutorado'),
  (0, 'Não Mapeado'); 

-- Drop a tabela se a mesma existir
DROP TABLE IF EXISTS Dimensions.dimSituacaoDomicilio;

-- Criação da Tabela de Dimensão SituacaoDomicilio
CREATE TABLE Dimensions.dimSituacaoDomicilio (
  Chave_Situacao_Domicilio INT PRIMARY KEY,
  Situacao_Domicilio VARCHAR(50)
);

-- Inserção de dados na Tabela de Dimensão SituacaoDomicilio
INSERT INTO Dimensions.dimSituacaoDomicilio (Chave_Situacao_Domicilio, Situacao_Domicilio)
VALUES
  (1, 'Urbano'),
  (2, 'Rural'),
  (0, 'Não Mapeado'); 

-- Drop a tabela se a mesma existir
DROP TABLE IF EXISTS Dimensions.dimUnidadeFederacao;

-- Criação da Tabela de Dimensão UnidadeFederacao
CREATE TABLE Dimensions.dimUnidadeFederacao (
  Chave_Unidade_Federacao INT PRIMARY KEY,
  Unidade_Federacao VARCHAR(100)
);

-- Inserção de dados na Tabela de Dimensão UnidadeFederacao
INSERT INTO Dimensions.dimUnidadeFederacao (Chave_Unidade_Federacao, Unidade_Federacao)
VALUES
  (11, 'Rondônia'),
  (12, 'Acre'),
  (13, 'Amazonas'),
  (14, 'Roraima'),
  (15, 'Pará'),
  (16, 'Amapá'),
  (17, 'Tocantins'),
  (21, 'Maranhão'),
  (22, 'Piauí'),
  (23, 'Ceará'),
  (24, 'Rio Grande do Norte'),
  (25, 'Paraíba'),
  (26, 'Pernambuco'),
  (27, 'Alagoas'),
  (28, 'Sergipe'),
  (29, 'Bahia'),
  (31, 'Minas Gerais'),
  (32, 'Espírito Santo'),
  (33, 'Rio de Janeiro'),
  (35, 'São Paulo'),
  (41, 'Paraná'),
  (42, 'Santa Catarina'),
  (43, 'Rio Grande do Sul'),
  (50, 'Mato Grosso do Sul'),
  (51, 'Mato Grosso'),
  (52, 'Goiás'),
  (53, 'Distrito Federal'),
  (0, 'Não Mapeado'); 

-- Drop a tabela se a mesma existir
DROP TABLE IF EXISTS Dimensions.dimRecebeuRendimentoAposentadoria;

-- Criação da Tabela de Dimensão RecebeuRendimentoAposentadoria
CREATE TABLE Dimensions.dimRecebeuRendimentoAposentadoria (
  Chave_Recebeu_Rendimento_Aposentadoria INT PRIMARY KEY,
  Recebeu_Rendimento_Aposentadoria VARCHAR(50)
);

-- Inserção de dados na Tabela de Dimensão RecebeuRendimentoAposentadoria
INSERT INTO Dimensions.dimRecebeuRendimentoAposentadoria (Chave_Recebeu_Rendimento_Aposentadoria, Recebeu_Rendimento_Aposentadoria)
VALUES
  (1, 'Sim'),
  (2, 'Não'),
  (0, 'Não Mapeado'); 

-- Drop a tabela se a mesma existir
DROP TABLE IF EXISTS Dimensions.dimTipoDomicilio;

-- Criação da Tabela de Dimensão TipoDomicilio
CREATE TABLE Dimensions.dimTipoDomicilio (
  Chave_Tipo_Domicilio INT PRIMARY KEY,
  Tipo_Domicilio VARCHAR(100)
);

-- Inserção de dados na Tabela de Dimensão TipoDomicilio
INSERT INTO Dimensions.dimTipoDomicilio (Chave_Tipo_Domicilio, Tipo_Domicilio)
VALUES
  (1, 'Próprio - já pago'),
  (2, 'Próprio - ainda pagando'),
  (3, 'Alugado'),
  (4, 'Cedido por empregador'),
  (5, 'Cedido por familiar'),
  (6, 'Cedido de outra forma'),
  (7, 'Outra condição'),
  (0, 'Não especificado');

-- Drop a tabela se a mesma existir
DROP TABLE IF EXISTS Dimensions.dimSolicitouEmprestimoDurantePandemia;

-- Criação da Tabela de Dimensão SolicitouEmprestimoDurantePandemia
CREATE TABLE Dimensions.dimSolicitouEmprestimoDurantePandemia (
  Chave_Solicitou_Emprestimo INT PRIMARY KEY,
  Solicitou_Emprestimo_Durante_Pandemia VARCHAR(100)
);

-- Inserção de dados na Tabela de Dimensão SolicitouEmprestimoDurantePandemia
INSERT INTO Dimensions.dimSolicitouEmprestimoDurantePandemia (Chave_Solicitou_Emprestimo, Solicitou_Emprestimo_Durante_Pandemia)
VALUES
  (1, 'Sim, conseguiu'),
  (2, 'Sim, não conseguiu'),
  (3, 'Não solicitou'),
  (0, 'Não Mapeado');

-- Drop a tabela se a mesma existir
DROP TABLE IF EXISTS Dimensions.dimSeguroDesemprego;

-- Criação da Tabela de Dimensão SeguroDesemprego
CREATE TABLE Dimensions.dimSeguroDesemprego (
  Chave_Seguro_Desemprego INT PRIMARY KEY,
  Seguro_Desemprego VARCHAR(50)
);

-- Inserção de dados na Tabela de Dimensão SeguroDesemprego
INSERT INTO Dimensions.dimSeguroDesemprego (Chave_Seguro_Desemprego, Seguro_Desemprego)
VALUES
  (0, 'Não Mapeado'),
  (1, 'Sim'),
  (2, 'Não');

-- Criação da Tabela Fato PnadCovid
DROP TABLE IF EXISTS Facts.factPnadCovid;

CREATE TABLE Facts.factPnadCovid (
  Ano INT,
  Mes INT,
  UF INT,
  Situacao_Domicilio INT,
  Idade INT,
  Sexo INT,
  Cor_Raca INT,
  Sabe_Ler_Escrever INT,
  Teve_Febre INT,
  Teve_Tosse INT,
  Teve_Dificuldade_Respirar INT,
  Teve_Dor_Garganta INT,
  Teve_Dor_Cabeca INT,
  Teve_Dor_Peito INT,
  Resultado_Test INT,
  Restringiu_Contato INT,
  Trabalhava_Semana_Referencia INT,
  Afastado_Semana_Referencia INT,
  Principal_Funcao INT,
  Recebeu_Rendimento_Aposentadoria INT,
  Tipo_Domicilio INT,
  Valor_Aluguel DECIMAL(10,2),
  Solicitou_Emprestimo_Durante_Pandemia INT,
  Seguro_Desemprego INT
);

-- Inserção de dados na Tabela Fato PnadCovid
INSERT INTO Facts.factPnadCovid (
  Ano,
  Mes,
  UF,
  Situacao_Domicilio,
  Idade,
  Sexo,
  Cor_Raca,
  Sabe_Ler_Escrever,
  Teve_Febre,
  Teve_Tosse,
  Teve_Dificuldade_Respirar,
  Teve_Dor_Garganta,
  Teve_Dor_Cabeca,
  Teve_Dor_Peito,
  Resultado_Test,
  Restringiu_Contato,
  Trabalhava_Semana_Referencia,
  Afastado_Semana_Referencia,
  Principal_Funcao,
  Recebeu_Rendimento_Aposentadoria,
  Tipo_Domicilio,
  Valor_Aluguel,
  Solicitou_Emprestimo_Durante_Pandemia,
  Seguro_Desemprego
)
SELECT
  Ano,
  V1013 as Mes,
  UF,
  V1022 as Situacao_Domicilio,
  A002 as Idade,
  A003 as Sexo,
  A004 as Cor_Raca,
  A005 as Sabe_Ler_Escrever,
  B0011 as Teve_Febre,
  B0012 as Teve_Tosse,
  B0013 as Teve_Dificuldade_Respirar,
  B0014 as Teve_Dor_Garganta,
  B0015 as Teve_Dor_Cabeca,
  B0016 as Teve_Dor_Peito,
  B009F as Resultado_Test,
  B011 as Restringiu_Contato,
  C001 as Trabalhava_Semana_Referencia,
  C002 as Afastado_Semana_Referencia,
  C007C as Principal_Funcao,
  D0011 as Recebeu_Rendimento_Aposentadoria,
  F001 as Tipo_Domicilio,
  F0021 as Valor_Aluguel,
  E001 as Solicitou_Emprestimo_Durante_Pandemia,
  D0061 as Seguro_Desemprego
FROM Staging.stgPnadCovid;