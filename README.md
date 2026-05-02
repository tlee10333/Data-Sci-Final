# Data Science Final Project: Bike Safety in Boston 
## Amanda Chang, Ben Meyer, Trinity Lee

Bicycling is one of the most popular urban mobility alternatives to cars. Most cities often have bike programs to expand access to biking and develop infrastructure to ensure safety when biking. However, even with these improvements, accidents can occur, leading to questions on safety and the factors that can contribute to more bicycle accidents in the busy city. Over the decades, Boston has undertaken to expand its bike lane network to promote safer, more sustainable transportation, accompanied with large amounts of data collected by the government that are freely accessible to all. With such resources, we decided to investigate bike accidents that occurred within the Boston—specifically only in the Suffolk county limits of Boston city—to identify any general trends and also if there were any geographical hotspots and briefly investigate why it is a hotspot and if focusing bike safety improvements in these hotspots would be effective ways to improve bike safety in Boston.  

## Organization
The final report (`R` Markdown and rendered `HTML`) is located in the top-level directory.

The `data/` directory contains all datasets utilized in this analysis.

The `tidying/` directory contains `R` scripts and `R` Markdown files used for data cleaning, preprocessing, and feature engineering.

## Datasets
Below are all the datasets that were used for this project. All datasets were easily obtained by downloading directly from their respective websites. Any additional data wrangling was done in the either the final report or in the tidying folder. All datasets used are located in the `data` folder. One detail to note is the raw and trimmed data are not included in the `data` folder due to it's sheer size even after converting to a zip file. The final files using Blue Bikes data after several rounds of data wrangling are the `all_trips_summary.csv` and `total_counts_with_coord.csv`.

- Bluebikes. (2011-2025). Bluebikes Trip History Data [Data set]. Lyft Bikes and Scooters, LLC. https://bluebikes.com/system-data. May 1, 2025

- BostonMaps. (2024). City of Boston Managed Streets [Data set]. Boston GIS. https://gis.data.mass.gov/datasets/boston::city-of-boston-managed-streets/about. May 1, 2025.

- geoDOT Admin. (2024). Bike Inventory 2024 [Data set and code book]. Massachusetts geoDOT. https://geo-massdot.opendata.arcgis.com/datasets/MassDOT::bike-inventory-2024/about. May 1, 2025.

- Vision Zero Boston. (2015-2026). Vision Zero Crash Records [Data set]. Department of Innovation and Technology. https://experience.arcgis.com/experience/bae68e65908f45e1bcc86fe5f089d266/page/Main-Grid-after-9%2F3. May 1, 2025.

- Vision Zero Boston. (2015-2026). Vision Zero Fatality Records [Data set]. Department of Innovation and Technology. https://experience.arcgis.com/experience/bae68e65908f45e1bcc86fe5f089d266/page/Main-Grid-after-9%2F3. May 1, 2025.

