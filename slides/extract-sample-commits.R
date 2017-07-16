library(dplyr)
library(RSQLite)
library(tidyr)

commits_sql <- src_sqlite("/tmp/commits.sqlite") %>%
  tbl(sql("select project, sha, date, author_name, author_email from commits order by project, sha")) %>%
  collect(n = Inf)

travis <- readRDS("data/travis-sample.rds")

all_built_commits <- travis %>%
  select(git_all_built_commits) %>%
  mutate(built_commit = strsplit(git_all_built_commits, "#")) %>%
  unnest(built_commit) %>%
  arrange(built_commit) %>%
  .$built_commit %>%
  unique()
    
#projects <- unique(travis$gh_project_name)

data <- commits_sql %>%
  filter(sha %in% all_built_commits) %>%
  rename(gh_project_name = project, git_commit_id = sha)

length(all_built_commits)
nrow(data)

object.size(data) %>% format(units="MB")
saveRDS(data, 'data/commits-sample.rds')

