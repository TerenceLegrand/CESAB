# Code to load data 

# From patheria database
download_data(database = "pantheria",
              url_database = "https://raw.githubusercontent.com/rdatatoolbox/datarepo/main/data/pantheria/PanTHERIA_1-0_WR05_Aug2008.txt",
              file_format = ".txt",
              data_name = "PanTHERIA_1-0_WR05_Aug2008")

# From WWF Wildfinder database

# mammals
download_data(database = "wildfinder",
              url_database = "https://raw.githubusercontent.com/rdatatoolbox/datarepo/main/data/wildfinder/wildfinder-mammals_list.csv",
              file_format = ".csv",
              data_name = "wildfinder-mammals_list")
