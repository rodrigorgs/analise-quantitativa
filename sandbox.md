Dia 1

- (20 min) Introdução à disciplina
  - Motivação: decisões baseadas em dados. Exemplo: vendas de aplicativos.
  - Análise qualitativa vs quantitativa. Exemplos na engenharia de software.
  - Abordagem da disciplina: dados observacionais
  - Escolha de ferramenta para análise de dados. Excel vs Java vs R. (mas escolha da ferramenta não é relevante para escrever na dissertação)
  - Avaliações da disciplina

- (40 min) Introdução à análise de dados
  - Definição de dados.
  - Representações de dados. Dados tabulares.
  - Classificação de variáveis: categórica (nominal, ordinal), numérica (discreta/contínua, intervalar/de razão)
  - Etapas da análise de dados
    - Requisitos: Goal, question, metrics
    - Coleta: manual e automática, fontes de dados em engenharia de software
    - Limpeza: dados incompletos, inconsistentes, com múltiplas representações, outliers
    - Transformações: Variável computada, agregação etc.
    - Modelagem: Causas e efeitos.
    - Comunicação: texto, tabelas, gráficos

- (60 min) Ambiente RStudio
  - Mostrar rodando no terminal.
  - Paineis.
  - Criação de projeto e diretório atual.
  - Fluxo editor => console (Ctrl+Enter). Botão Compile Report (knitr spin). Formato R Markdown.

- (30 min) Linguagem R
  - R Básico: variáveis, vetores (operações vetorizadas, funções de vetores), NA, data frames (e funções como summary), leitura com read.csv e similares.

Dia 2

- (45 min) Transformação de dados (com dplyr).
  - Operador `%>%` (exemplo com head e tail para obter os últimos dos primeiros).
  - filter(data, pred). Operador `%>%`.
  - arrange. Combinação de filter e arrange.
  - select, `.$`
  - rename
  - mutate
  - summarise. funções max, min, sum, mean, n, n_distinct, first, last, nth
  - group_by + summarise
  - inner_join (ver também left_join, right_join, full_join)
  - table, xtabs, group_by + summarise(n())
  - Exemplo com o Eclipse (atividade prática ou coding dojo).

FAZER DOJO

(cobrir parte do dia 3)

Dia 3

TODO: incluir nos slides parte de análise de dados categóricos.

- Análise exploratória de dados: estatística descritiva e visualização.
  - Estatística descritiva: univariada e bivariada (e, possivelmente, multivariada).
  - Estatística descritiva univariada, variáveis numéricas:
    - média, desvio-padrão
    - mínimo, máximo, mediana.
    - média vs. mediana.
    - quartil, quantil, percentil.
  - Visualização de dados.
    - Visualização: justificativa, definição.
    - Boas e más práticas: <https://flowingdata.com/2010/07/22/7-basic-rules-for-making-charts-and-graphs/>, <https://flowingdata.com/2015/08/11/real-chart-rules-to-follow/>, evite 3D
    - Histograma. Assimetria, curtose.
    - Boxplot.
    - Escala logarítmica.
  - Estatística descritiva univariada, variáveis categóricas:
    - Frequência (contagem) - absoluta e relativa, tabelas de contingência. table, prop.table, margin.table. Moda. Se for ordinal, mediana.
    - Visualização: bar plot, stacked bar plot, pie chart (não recomendado), ordenação dos fatores.
  - Estatística descritiva bivariada, variáveis numéricas:
    - séries temporais
    - gráfico de dispersão
    - correlação, matriz de correlação, matriz de dispersão
  - Estatística descritiva bivariada, variáveis categóricas:
    - stacked bar plot (pode ordenar), side-by-side bar plot, stacked bar plot 100%, mosaic plot

Dia 4

TODO: revisar todo o conteúdo.

TODO: distribuições, distribuição normal.

- Análise confirmatória
  - Contraste com estatística descritiva: na análise confirmatória, a partir de uma amostra, tenta tirar conclusões sobre um conjunto maior, a população.
  - Amostragem
    - Amostra e população.
    - Viés. Tipos de amostragem.
  - Noções de probabilidade.
    - Interpretações: resultados simétricos, frequência relativa.
    - Probabilidade de dois resultados independentes, probabilidade condicional, probabilidade de dois resultados dependentes. Curiosidade: o problema de Monty Hall.
  - Estimativa.
    - Pontual. Intervalar. Nível de confiança. Relação entre nível de confiança e tamanho do intervalo de confiança.
    - Estimativa de uma proporção. Tamanho da amostra para a proporção.
    - Estimativa de uma média. Tamanho da amostra para a média.
  - Teste de hipótese: noções.
    - Definição.
    - Relação com estimativa: t.test com mu. (Note que pode concluir diversos valores diferentes para mu, com significância estatística)
    - Noções (com exemplos).
      - Philosopher's beans: "Poucos feijões neste punhado são brancos. / Muitos feijões neste saco são brancos. / Portanto, provavelmente esses feijões foram tirados de outro saco."
        - Punhado = amostra, saco = população.
        - P(obter poucos feijões brancos na mão | há muitos feijões brancos no saco) é baixa.
        - Variação: esses dois punhados vieram do mesmo saco?
      - Moeda. (ver <https://speakerdeck.com/jakevdp/statistics-for-hackers>). 22 caras em 30 lançamentos. (população = resultado de todos os lançamento: é infinita!)
      - Julgamento: consideramos a moeda é justa a não ser que exista evidência forte de que não é.
      - Exemplo mais abstrato: esta amostra vem de uma população com média X e desvio-padrão Y.
    - Conceitos
      - Hipótese nula: o resultado observado veio de um processo X / uma distribuição X, sujeita apenas a efeitos aleatórios. Ex.: a moeda é justa; os feijões vieram deste saco; os dois punhados vieram do mesmo saco.
      - Hipótese alternativa.
      - p-value: dado o resultado que foi observado, a probabilidade de esse resultado acontecer caso a hipótese nula seja verdadeira
      - Significância (alfa): valor limite usado para rejeitar a hipótese nula. É comum usar 5%. Confiança: 1 - significância.
        + Em alfa% das análises, minha conclusão estará errada.
  - Testes de hipótese e suas aplicações
    - Dimensões a considerar: tipo de dados (numérico? categórico?); distribuição da população (normal/não-normal); número de amostras; independência das amostras.
    - Testes para variáveis numéricas (os não-paramétricos também servem para ordinais)
      - Testes para determinar se duas amostras vêm da mesma população ou de populações com as mesmas características (distribuições): teste de t-Student (normal e pareado), teste de Mann-Whitney/Wilcoxon.
      - Teste de t-Student (teste T). Propósito. Pressupostos. Como avaliar os pressupostos.
      - Teste T pareado
      - Teste de Mann Whitney
      - Teste de Wilcoxon
      - Tópicos avançados
        - Tamanho do efeito.
        - Múltiplos testes e p-hacking. Correção de Bonferroni.
        - Variáveis de confusão.
      - Testes para mais de duas amostras: ANOVA (1-way, 2-way, n-way), Kruskall-Wallis (1-way), Friedman (2-way)
    - Testes para variáveis nominais
      - Qui-quadrado
      - McNemar
      - Tamanho do efeito

```r
resultado <- c()
num_experimentos <- 10000
experimentos_com_22_caras_ou_mais <- 0
for (i in 1:num_experimentos) {
  
  caras <- 0
  for (lancamento in 1:30) {
    deu_cara <- sample(c(TRUE, FALSE), 1)
    if (deu_cara) { caras <- caras + 1 }
  }
  resultado[i] <- caras
  
  if (caras >= 22) {
    experimentos_com_22_caras_ou_mais <- experimentos_com_22_caras_ou_mais + 1
  }  
}

cat(100 * experimentos_com_22_caras_ou_mais / num_experimentos, '%', sep='')
hist(resultado)
```

Dia 5

