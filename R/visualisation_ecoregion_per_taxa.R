visualisation_ecoregion_per_taxa <- function(database = NULL) {

  library(ggplot2)
  
  p <- ggplot(database, aes(species_names,nbr_ecoregions)) + 
  geom_boxplot() +
  theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1))
  
  return(p)
  
}