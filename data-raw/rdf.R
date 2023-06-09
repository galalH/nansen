library(tidyverse)

fetch_dataset <- function(dataset) {
  url_template <- "https://api.unhcr.org/population/v1/{dataset}/?limit={limit}&page={page}&yearFrom=1951&yearTo=2022&coo_all=true&coa_all=true"
  read_json <- insistently(jsonlite::fromJSON, rate = rate_delay(60))
  results_per_page <- 10000

  fetch_page <- function(page) {
    read_json(glue::glue(url_template,
                         .envir = list(dataset = dataset,
                                       limit = results_per_page,
                                       page = page)))$items |>
      mutate(across(everything(), as.character))
  }

  pages <-
    read_json(glue::glue(url_template,
                         .envir = list(dataset = dataset,
                                       limit = 1,
                                       page = 1))) |> pluck("maxPages")

  map(1:ceiling(pages/results_per_page),
      fetch_page,
      .progress = dataset) |>
    list_rbind() |>
    type_convert(na = "-") |>
    select(-coo_id, -coa_id) |>
    as_tibble()
}

population <- fetch_dataset("population")
demographics <- fetch_dataset("demographics")
asylum_applications <- fetch_dataset("asylum-applications")
asylum_decisions <- fetch_dataset("asylum-decisions")
solutions <- fetch_dataset("solutions")
idmc <- fetch_dataset("idmc")
unrwa <- fetch_dataset("unrwa")

usethis::use_data(population, demographics,
                  asylum_applications, asylum_decisions,
                  solutions, idmc, unrwa,
                  overwrite = TRUE)
