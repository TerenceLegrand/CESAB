# Find the number of ecoregions per species

# For Ursidae
ursidae_ecoregions <- ecoregion_per_taxa(taxa = "Ursidae", taxa_level = "family")

# Visualisation
p <- visualisation_ecoregion_per_taxa(ursidae_ecoregions)
plot(p)
