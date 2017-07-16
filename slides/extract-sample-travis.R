library(data.table)
library(dplyr)
library(RSQLite)
library(readr)

travis_full <- fread('zcat /tmp/travistorrent_8_2_2017.csv.gz')


set.seed(0)
sam <- travis_full %>%
  select(gh_project_name, gh_lang) %>%
  sample_n(500) %>%
  unique()

ruby <- sam %>%
  filter(gh_lang == 'ruby') %>%
  sample_n(30)

java <- sam %>%
  filter(gh_lang == 'java') %>%
  sample_n(30)

projects <- c(ruby$gh_project_name, java$gh_project_name)

travis_sample <- travis_full %>%
  filter(gh_project_name %in% projects)

travis_sample <- type_convert(travis_sample)

saveRDS(travis_sample, 'data/travis-sample.rds')
object.size(travis_sample) %>% format(units="MB")
