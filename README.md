# CatSched Dashboard

## About

This repo contains all code needed for the CatSched Dashboard, an R Shiny project that uses the CatSched API to retrieve data about prospective course schedules and visualize them. The goal is for faculty members (particularly department chairs) to be able to understand the dispersion of their class schedules for the upcoming academic year, and use that information to spread out their sections so the overall college schedule is somewhat evenly distributed throughout any given week of a given semester.

## Config

The main `app.R` file contains references to two environment variables that need to be defined in order to deploy this Shiny app. These variables store the URL for the CatScheduler API and a private bearer token that must be passed in order to authenticate.

```{r}
# Define variables for data pull
conn_args <- config::get("dataconnection")

api_url <- conn_args$url
bearer_token <- conn_args$token
```

When running this app locally, these variables can be defined in a `config.yml` file that resides in the project's working directory:

```
default:
  dataconnection:
    url: 'YourUrlGoesHere'
    token: 'YourTokenGoesHere'
```

## Authors

- Pete Benbow (Dept of Data Science)

## Future plans

- Set up GitHub actions to automatically deploy this dashboard to a production Shiny environment like shinyapps.io or an internal college server, or run it in serverless mode via the `shinylive` package.
- Convert the dashboard to Quarto
