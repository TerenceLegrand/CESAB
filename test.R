install.packages('rcompendium')
library(rcompendium)


set_credentials_local(given    = "Terence",
                family   = "Legrand", 
                email    = "legrandterence@gmail.com", 
                orcid    = "0000-0002-9120-5153", 
                protocol = "ssh")


gh::gh_whoami()


rcompendium::add_description(given    = "Terence",
                family   = "Legrand", 
                email    = "legrandterence@gmail.com", 
                orcid    = "0000-0002-9120-5153",
                organisation = "pole-emploi",
                open = TRUE, 
                overwrite = FALSE,
                quiet = FALSE)


rcompendium::add_license(license = "GPL-2")

rcompendium::add_compendium(compendium = c("data", "analyses", "figures", "outputs"))


utils::download.file(url = "https://raw.githubusercontent.com/rdatatoolbox/datarepo/main/data/pantheria/PanTHERIA_1-0_WR05_Aug2008.txt", 
                     destfile = here::here("/data"))

here::here("/data")

download_data(database = "pantheria",
              url_database = "https://raw.githubusercontent.com/rdatatoolbox/datarepo/main/data/pantheria/PanTHERIA_1-0_WR05_Aug2008.txt",
              file_format = ".txt",
              data_name = "PanTHERIA_1-0_WR05_Aug2008")


rcompendium::add_makefile(
  given    = "Terence",
  family   = "Legrand", 
  email    = "legrandterence@gmail.com", 
  open = TRUE,
  overwrite = FALSE,
  quiet = FALSE
)

rcompendium::add_readme_rmd(
  type = "compendium",
  given    = "Terence",
  family   = "Legrand", 
  organisation = "pole-emploi",
  open = TRUE,
  overwrite = FALSE,
  quiet = FALSE
)

