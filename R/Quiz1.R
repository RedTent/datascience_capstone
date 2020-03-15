# Acknowledge 
# Text mining with R - Julia Silge and David Robinson
# https://www.tidytextmining.com/


library(tidyverse)
library(tidytext)

raw_text_news <- tibble(text = read_lines("data/en_US.news.txt"))
raw_text_blogs <- tibble(text = read_lines("data/en_US.blogs.txt"))
raw_text_twitter <- tibble(text = read_lines("data/en_US.twitter.txt"))

raw_text_news %>% mutate(n_char = nchar(text)) %>% filter(n_char == max(n_char))
raw_text_blogs %>% mutate(n_char = nchar(text)) %>% filter(n_char == max(n_char))

raw_text_twitter %>% summarise(love = sum(str_detect(text, "love")),
                               hate = sum(str_detect(text, "hate")))

raw_text_twitter %>% filter(str_detect(text, "biostats"))

string <- "A computer once beat me at chess, but it was no match for me at kickboxing"

raw_text_twitter %>% summarise(Q5 = sum(str_detect(text, string)))

# text <- raw_text %>%
#   mutate(line = row_number()) %>%
#   unnest_tokens(word, text)

