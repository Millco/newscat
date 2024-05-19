library(rvest)
getwd()
rm(list=ls())
html <- read_html("https://netzpolitik.org/feed")
# download dropbox server: wget https://edge.dropboxstatic.com/dbx-releng/client/dropbox-lnx.x86_64-199.4.6287.tar.gz
# show hidden folder: ls -ld .?*; move in den home folder: mv ./dropbox-dist ~
# oder: https://www.dropbox.com/install-linux anleitung für installation


html %>%
  html_elements("title")

dates <- html %>% 
  html_elements("pubdate") %>%
  html_text2()

Sys.setlocale("LC_TIME", "en_US.UTF-8")
as.POSIXct(substr(dates[1], 1, nchar(dates[1])), format="%a, %d %B %Y %H")
as.Date(substr(dates[1], 1, nchar(dates[1])), format="%a, %d %B %Y %H")

html %>%
  html_elements("p")

articles <- html %>%
  html_elements("item")

headlines <- articles %>%
  html_elements("title") %>%
  html_text2()
# articles[1] %>% 
  # html_elements("PubDate")
# articles[1] %>%
  # html_elements("dc")
content <- articles[1] %>%
  html_elements("p") %>%
  html_text2()
?html_elements

for (y in 1:length(headlines)){

  content <- articles[y] %>%
    html_elements("p") %>%
    html_text2()
  
  for (x in 1:length(content)){ # Bearbeiten der Absätze
  content[x] <- paste("<p>", content[x], "</p>")
  }
  
  np <- as.character(c("<h2>",headlines[y],"</h2>", content))
  writeLines(np, "article.html") # Dybanuscge Dateinamen einfügen

}


