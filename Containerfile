FROM docker.io/rocker/shiny:latest
RUN apt-get update && apt-get install -y libwebp-dev
RUN install2.r config tidyverse httr jsonlite lubridate dplyr bslib markdown shinythemes shinyalert
USER shiny
COPY --chown=shiny:shiny . /home/shiny/
EXPOSE 3030
CMD ["R", "-e", "shiny::runApp('/home/shiny/app.R',port=3030)"]
