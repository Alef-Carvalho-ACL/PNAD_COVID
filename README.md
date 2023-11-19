# Análise de Dados do PNAD COVID

![Visualização de dados e COVID-19](https://github.com/Alef-Carvalho-ACL/PNAD_COVID/images/lamp_virus_visualization.jpeg)
_Centralize insights críticos com nossa abordagem de modelagem de dados._

## Introdução

Este projeto utiliza o Star Schema para organizar dados da PNAD em um Data Warehouse, otimizando análises e relatórios sobre a pandemia COVID-19.

## Banco de Dados

A estrutura do banco de dados é composta por uma tabela de fato central e dimensões diversas, refletindo diferentes aspectos da pandemia:

- ![Ícone de Saúde](https://github.com/Alef-Carvalho-ACL/PNAD_COVID/images/health_icon.png) **Dimensão Saúde**: Sintomas e Vacinação.
- ![Ícone de Trabalho](https://github.com/Alef-Carvalho-ACL/PNAD_COVID/images/work_icon.png) **Dimensão Trabalho**: Informações sobre emprego e atividade econômica.
- ![Ícone de População](https://github.com/Alef-Carvalho-ACL/PNAD_COVID/images/population_icon.png) **Dimensão População**: Dados demográficos.
- ![Ícone de Economia](https://github.com/Alef-Carvalho-ACL/PNAD_COVID/images/economy_icon.png) **Dimensão Economia**: Indicadores econômicos.
- ![Ícone de Comportamento](https://github.com/Alef-Carvalho-ACL/PNAD_COVID/images/behavior_icon.png) **Dimensão Comportamento**: Atitudes durante a pandemia.

## Arquivos do Projeto

- `Query_Dimension_Fact_Staging.sql` - Script SQL para estruturação do DW.
- `ETL_PnadCovid.ipynb` - Jupyter Notebook detalhando o processo de ETL com Python.

## Análise e Insights

![Imagem de onda](https://github.com/Alef-Carvalho-ACL/PNAD_COVID/images/wave_image.jpg)
_Aprofunde-se nos dados com nossa análise detalhada._

### Análise Exploratória

Identificamos padrões críticos e tendências através de uma análise detalhada de variáveis selecionadas, usando métodos estatísticos e preditivos.

### Modelagem

Utilizamos regressão logística para examinar a relação entre sintomas e variáveis demográficas e econômicas.

## Conclusões e Recomendações

![Ícone de Atenção](https://github.com/Alef-Carvalho-ACL/PNAD_COVID/images/attention_icon.png)
_Prepare-se para futuros desafios com nossas recomendações estratégicas._

- **Triagem Diferenciada**: Adapte a triagem baseada em idade e condições de moradia.
- **Apoio Socioeconômico**: Atenda as necessidades dos mais vulneráveis.
- **Monitoramento e Educação**: Eduque sobre prevenção e manejo de sintomas.

## Sobre o Projeto

![Ícone de Dicionário de Dados](https://github.com/Alef-Carvalho-ACL/PNAD_COVID/images/data_dictionary_icon.png)
_Conheça nosso processo e metodologia._

Este projeto foi desenvolvido para fornecer insights valiosos para a preparação de hospitais e instituições de saúde em resposta à COVID-19.

## Cores do Design

- ![Cor Bege](https://github.com/Alef-Carvalho-ACL/PNAD_COVID/images/color_sample_beige.png) `#E8D9C6`
- ![Cor Azul Escuro](https://github.com/Alef-Carvalho-ACL/PNAD_COVID/images/color_sample_dark_blue.png) `#486773`
- ![Cor Azul Claro](https://github.com/Alef-Carvalho-ACL/PNAD_COVID/images/color_sample_light_blue.png) `#7AB0C2`
- ![Cor Cinza Azulado](https://github.com/Alef-Carvalho-ACL/PNAD_COVID/images/color_sample_blued_gray.png) `#B9C3C2`
