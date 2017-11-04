FROM rocker/shiny:latest

RUN apt-get update
RUN apt-get install libpq-dev libxml2-dev libssl-dev -y

RUN R -e "install.packages(c('tidyverse', 'shinydashboard', 'survival', 'ggfortify', 'ggthemes', 'DBI', 'RPostgreSQL'), repos='https://cran.rstudio.com/')" 


WORKDIR /srv/shiny-server
