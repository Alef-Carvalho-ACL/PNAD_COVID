# Análise de Dados do PNAD COVID

## Introdução

Este projeto utiliza o Star Schema para organizar dados da PNAD em um Data Warehouse, otimizando análises e relatórios sobre a pandemia COVID-19.

## Banco de Dados

A estrutura do banco de dados é composta por uma tabela de fato central e dimensões diversas, refletindo diferentes aspectos da pandemia:

- **Dimensão Saúde**: Sintomas e Vacinação.
- **Dimensão Trabalho**: Informações sobre emprego e atividade econômica.
- **Dimensão População**: Dados demográficos.
- **Dimensão Economia**: Indicadores econômicos.
- **Dimensão Comportamento**: Atitudes durante a pandemia.

## Arquivos do Projeto

- `Query_Dimension_Fact_Staging.sql` - Script SQL para estruturação do DW.
- `ETL_PnadCovid.ipynb` - Jupyter Notebook detalhando o processo de ETL com Python.

### Análise Exploratória

Identificamos padrões críticos e tendências através de uma análise detalhada de variáveis selecionadas, usando métodos estatísticos e preditivos.

### Modelagem

Utilizamos regressão logística para examinar a relação entre sintomas e variáveis demográficas e econômicas.

## Conclusões e Recomendações
_Prepare-se para futuros desafios com nossas recomendações estratégicas._

- **Triagem Diferenciada**: Adapte a triagem baseada em idade e condições de moradia.
- **Apoio Socioeconômico**: Atenda as necessidades dos mais vulneráveis.
- **Monitoramento e Educação**: Eduque sobre prevenção e manejo de sintomas.

## Sobre o Projeto

Este projeto foi desenvolvido para fornecer insights valiosos para a preparação de hospitais e instituições de saúde em resposta à COVID-19.

## Cores do Design

- ![Cor Bege] `#E8D9C6`
- ![Cor Azul Escuro] `#486773`
- ![Cor Azul Claro] `#7AB0C2`
- ![Cor Cinza Azulado] `#B9C3C2`
