# Análise Quantitativa, 2016.2

Este repositório contém o código-fonte e os dados utilizados na disciplina de Engenharia de Software Experimental, tópico Análise Quantitativa, do Programa de Pós-Graduação em Ciência da Computação da UFBA (PGCOMP).

## Notas de aula

- Aula 1 (2/3/2017)
  - [Introdução à disciplina](http://rpubs.com/rodrigorgs/intro) - [código-fonte](slides/intro.Rmd)
  - [Análise de dados](http://rpubs.com/rodrigorgs/processo) - [código-fonte](slides/processo.Rmd)
  - [Introdução à linguagem R](http://rpubs.com/rodrigorgs/intro-R_) - [código-fonte](slides/intro-R.Rmd)
  - [Transformação de dados (com dplyr)](http://rpubs.com/rodrigorgs/transformacao) - [código-fonte](slides/transformacao.Rmd)
  - Exemplo: Eclipse metrics - [código-fonte](slides/eclipse-metrics.Rmd)
  - Leituras recomendadas:
    - [R for Data Science: Data transformation](http://r4ds.had.co.nz/transform.html)
    - [Data Transformation Cheat Sheet](https://github.com/rstudio/cheatsheets/raw/master/source/pdfs/data-transformation-cheatsheet.pdf)
- Aula 2 (9/3)
  - [Análise exploratória de dados](http://rpubs.com/rodrigorgs/eda) - [código-fonte](slides/eda.Rmd)
  - Visualização de dados (com ggplot2)
    - [R for Data Science: Data visualization](http://r4ds.had.co.nz/data-visualisation.html)
    - [Data Visualization Cheat Sheet](https://www.rstudio.com/wp-content/uploads/2016/11/ggplot2-cheatsheet-2.1.pdf)
  - Data set GHTorrent (ver abaixo, *Trabalho prático*)
- Aula 3 (16/3)
  - Noções de amostragem, probabilidade e estimativa: [código-fonte](slides/estimativa.Rmd) e [slides complementares](https://docs.google.com/presentation/d/1H4_XZRhjrZnxABet_IXejwPu72e3XlgNoOgZtFrp6oM/edit?usp=sharing)
  - Ver análise de artigo, valendo 1,0 ponto, para a próxima aula
- Aula 4 (23/3)
  - Teste de hipótese e tamanho de efeito
- Aula 5 (30/3)
  - Correlação, regressão e predição

## Avaliações

### Análise de artigo (1,0 ponto)

Artigo: [Sentiment Analysis of Commit Comments in GitHub: An Empirical Study](https://www.dropbox.com/s/tf9y3eeox4x1eqh/p352-guzman.pdf?dl=0)

Prazo: 22/03/2017

Elabore uma análise do artigo, em português, contendo os seguintes itens:

- Um parágrafo de resumo do artigo, descrevendo o objetivo, a metodologia e os principais resultados do artigo.
- Para cada questão de pesquisa:
  - Descrição da questão
  - Quais variáveis foram estudadas
  - Para cada variável estudada: como ela é medida (ou seja, qual a métrica usada), se ela é dependente ou independente, se ela é nominal, ordinal, discreta ou contínua.
  - Descrição das análises realizadas:
    - Os dados precisaram ser transformados? Se sim, como?
    - Foi usada estatística descritiva? Se sim, que estatísticas e gráficos foram apresentados?
    - Foi usada estatística inferencial? Se sim, quais testes foram realizados? O tamanho do efeito foi medido?
- Uma sugestão de análise que poderia ter sido realizada para apoiar alguma das questões de pesquisa do artigo ou uma nova questão de pesquisa a sua escolha.

### Trabalho prático (3,0 pontos)

Data set: [msr14sample](https://www.dropbox.com/s/py6j51vc81wr574/msr14sample.sqlite?dl=0) -- versão modificada do [GHTorrent MSR 2014](http://ghtorrent.org/msr14.html) (ver [schema](http://ghtorrent.org/relational.html)).

Alguns trabalhos que usam esse data set podem ser encontrados no [programa do MSR Challenge 2014](http://2014.msrconf.org/program.php) (ver sessão das 16:00-17:00, MSR Challenge).

Em duplas, elaborem um relatório de análise do data set, seguindo o padrão do arquivo [exemplo-ghtorrent.Rmd](slides/exemplo-ghtorrent.Rmd), no formato documento R Markdown. Você precisará definir 2 questões de pesquisa.

Publique o relatório no RPubs.com; envie o link e o código-fonte (arquivo `.Rmd`) para <rodrigorgs@ufba.br>

Prazo: 06/04/2017

## Referências

R:

- [R for Data Science](http://r4ds.had.co.nz/)
- [R Cheat Sheets](https://www.rstudio.com/resources/cheatsheets/)

Estatística:

- [OpenIntro Statistics](https://www.openintro.org/stat/)
- [Online Statistics Education: An Interactive Multimedia Course of Study](http://onlinestatbook.com/)
