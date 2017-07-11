# Análise Quantitativa, 2017.1 - lab 144 do IME

Este repositório contém o código-fonte e os dados utilizados na disciplina de Engenharia de Software Experimental, tópico Análise Quantitativa, do Programa de Pós-Graduação em Ciência da Computação da UFBA (PGCOMP).

## Notas de aula

- Aula 1 (22/6)
  - [Introdução à disciplina](http://rpubs.com/rodrigorgs/intro) - [código-fonte](slides/intro.Rmd)
  - [Análise de dados](http://rpubs.com/rodrigorgs/processo) - [código-fonte](slides/processo.Rmd)
  - [Introdução à linguagem R](http://rpubs.com/rodrigorgs/intro-R_) - [código-fonte](slides/intro-R.Rmd)
  - Exemplo: Eclipse metrics - [código-fonte](slides/eclipse-metrics.Rmd)
  - Leituras recomendadas:
    - [R for Data Science: Data transformation](http://r4ds.had.co.nz/transform.html)
    - [Data Transformation Cheat Sheet](https://github.com/rstudio/cheatsheets/raw/master/source/pdfs/data-transformation-cheatsheet.pdf)
- Aula 2 (29/6)
  - [Transformação de dados (com dplyr)](http://rpubs.com/rodrigorgs/transformacao) - [código-fonte](slides/transformacao.Rmd)
  - [Gerência de configuração, GitHub e Travis CI](https://github.com/rodrigorgs/analise-quantitativa/blob/master/slides/github-ci.md) (ver abaixo, *Trabalho prático*)
- Aula 3 (6/7)
  - [Análise exploratória de dados](http://rpubs.com/rodrigorgs/eda) - [código-fonte](slides/eda.Rmd)
  - R Notebook
  - Visualização de dados (com ggplot2)
    - [R for Data Science: Data visualization](http://r4ds.had.co.nz/data-visualisation.html)
    - [Data Visualization Cheat Sheet](https://www.rstudio.com/wp-content/uploads/2016/11/ggplot2-cheatsheet-2.1.pdf)
  - Noções de amostragem, probabilidade e estimativa: [código-fonte](slides/estimativa.Rmd) e [slides complementares](https://docs.google.com/presentation/d/1H4_XZRhjrZnxABet_IXejwPu72e3XlgNoOgZtFrp6oM/edit?usp=sharing)
  - Ver análise de artigo, valendo 1,0 ponto, para a próxima aula
- Aula 4 (20/7)
  - Discussão do artigo [Sentiment Analysis of Travis CI Builds](https://rodrigorgs.github.io/files/msr2017-rodrigo.pdf) (ver abaixo)
  - Teste de hipótese e tamanho de efeito: [código-fonte](slides/inferencia.Rmd) e [slides](http://rpubs.com/rodrigorgs/inferencia)
- Aula 5 (27/7)
  - Correlação, regressão e predição: [código-fonte](slides/regressao.Rmd)

## Avaliações

### Análise de artigo (1,0 ponto) - 20/07 13h

Artigo: [Sentiment Analysis of Travis CI Builds](https://rodrigorgs.github.io/files/msr2017-rodrigo.pdf)

Prazo: 20/07/2017 antes do horário da aula, via e-mail para <rodrigorgs@ufba.br>

Elabore uma análise do artigo, em português, contendo os seguintes itens:

- Um parágrafo de resumo do artigo, descrevendo o objetivo, a metodologia e os principais resultados do artigo.
- Lista de variáveis estudadas; para cada variável, indicar se é nominal, ordinal, discreta ou contínua.
- Para cada questão de pesquisa:
  - Descrição da questão
  - Enumeração das variáveis, diferenciando entre variáveis dependentes e variáveis independentes.
  - Descrição das análises realizadas:
    - Os dados precisaram ser transformados? Se sim, como?
    - Foi usada estatística descritiva? Se sim, que estatísticas e gráficos foram apresentados?
    - Foi usada estatística inferencial? Se sim, quais testes foram realizados? O tamanho do efeito foi medido?

Traga dúvidas sobre o artigo para discussão em sala de aula.

## Trabalho prático (3,0 pontos) - 27/07 13h

- Elaborar um relatório de análise do dataset [TravisTorrent](https://travistorrent.testroots.org/). Você pode encontrar alguns artigos que usaram esse dataset na [programação do MSR 2017](http://2017.msrconf.org/#/program). 
- Os resultados devem ser escritos no formato [R Markdown](http://rmarkdown.rstudio.com/) (extensão `.Rmd`). Veja aqui um [exemplo de análise do TravisTorrent usando R Markdown](https://github.com/rodrigorgs/analise-quantitativa/blob/master/slides/exemplo-travis.Rmd).
- Seções:
  - Introdução: motivação (até dois parágrafos), questões de pesquisa
  - Metodologia: explicar coleta, transformação e análise
  - Resultados: apresentar análise exploratória e resultado de testes estatísticos
  - Conclusão: impactos, limitações, trabalhos futuros
- Equipes de até 4 pessoas:
  - Para equipes com até 3 pessoas, o relatório deve conter 2 questões de pesquisa
  - Para equipes com 4 pessoas, o relatório deve conter 3 questões de pesquisa
- Entrega até o dia 27/07/2017, às 13:00, por e-mail para <rodrigorgs@ufba.br>, contendo o código `.Rmd` e o link para o relatório [RPubs](https://rpubs.com/).
- Apresentação da análise em 5 minutos durante a aula do dia 27/07/2017.

## Referências

R:

- [R for Data Science](http://r4ds.had.co.nz/)
- [R Cheat Sheets](https://www.rstudio.com/resources/cheatsheets/)

Estatística:

- [OpenIntro Statistics](https://www.openintro.org/stat/)
- [Online Statistics Education: An Interactive Multimedia Course of Study](http://onlinestatbook.com/)
