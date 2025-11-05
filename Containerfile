FROM docker.io/rocker/shiny:latest
RUN install2.r tidyverse httr jsonlite lubridate dplyr bslib markdown shinythemes shinyalert
USER shiny
COPY --chown=shiny:shiny . /home/shiny/
CMD ["R", "-e", "shiny::runApp('/home/shiny/app.R')"]
