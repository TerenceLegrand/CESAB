ecoregion_per_taxa <- function(taxa = NULL, taxa_level = NULL) {

  ecoregion_list <- readr::read_csv(here::here("data","wildfinder","wildfinder-ecoregions_list.csv"))
  
  ecoregion_species <- readr::read_csv(here::here("data","wildfinder","wildfinder-ecoregions_species.csv"))
  
  mammals_list <- readr::read_csv(here::here("data","wildfinder","wildfinder-mammals_list.csv"))

  
  # ecoregion_taxa <- sort(unique(ecoregion_list$ecoregion[ecoregion_list$ecoregion_id %in% 
  #   ecoregion_species$ecoregion_id[ecoregion_species$species_id %in%
  #                                  mammals_list$species_id[mammals_list$family %in%
  #                                                            "Ursidae"]]]))
  
  taxa_species_list <- mammals_list$species_id[mammals_list$family %in% taxa]
  
  
  ecoregion_per_species <- data.frame(species_id = mammals_list$species_id[mammals_list$family %in% taxa],
                                      species_taxa = taxa,
                                     species_names = paste(mammals_list$genus[mammals_list$family %in% taxa],mammals_list$species[mammals_list$family %in% taxa]),
                                     nbr_ecoregions = NA)
  
  for (i in 1:length(taxa_species_list)) {
    
    ecoregion_species_list <- unique(ecoregion_list$ecoregion[ecoregion_list$ecoregion_id %in% 
                                           ecoregion_species$ecoregion_id[ecoregion_species$species_id %in% 
                                                                            ecoregion_per_species$species_id[i]]])
    
    ecoregion_per_species$nbr_ecoregions[i] <- length(ecoregion_species_list)
    
  }
  
  return(ecoregion_per_species)
  
  }