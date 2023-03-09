library(tidyverse)
library(flexdashboard)
library(plotly)
library(leaflet)
library(dygraphs)
library(metricsgraphics)
library(readr)
devtools::install_github("rstudio/d3heatmap")

Young_Driver_Crashes <- Young_Driver_Crashes <- read_csv("accidentdata/Young_Driver_Crashes.csv")
head(Young_Driver_Crashes)

Wrong_Way_Crashes <- read_csv("accidentdata/Wrong_Way_Crashes.csv")
head(Wrong_Way_Crashes)

Work_Zone_Crashes <- read_csv("accidentdata/Work_Zone_Crashes.csv")
View(Work_Zone_Crashes)

Unlicensed_Driver_Crashes <- read_csv("accidentdata/Unlicensed_Driver_Crashes.csv")
head(Unlicensed_Driver_Crashes)

Pedestrian_Crashes <- read_csv("accidentdata/Pedestrian_Crashes.csv")
head(Pedestrian_Crashes)

Older_Driver_Crashes <- read_csv("accidentdata/Older_Driver_Crashes.csv")
head(Older_Driver_Crashes)

Non_Motorist_Crashes <- read_csv("accidentdata/Non_Motorist_Crashes.csv")
head(Non_Motorist_Crashes)

Motorcycle_Crashes <- read_csv("accidentdata/Motorcycle_Crashes.csv")
head(Motorcycle_Crashes)

Intersection_Crashes <- read_csv("accidentdata/Intersection_Crashes.csv")
head(Intersection_Crashes)

Fixed_Object_Crashes <- read_csv("accidentdata/Fixed_Object_Crashes.csv")
head(Fixed_Object_Crashes)

DUI_Crashes <- read_csv("accidentdata/DUI_Crashes.csv")
head(DUI_Crashes)

Distracted_Driver_Crashes <- read_csv("accidentdata/Distracted_Driver_Crashes.csv")
head(Distracted_Driver_Crashes)

colnames(DUI_Crashes)
getwd()

accident_list_1 <- bind_rows(Distracted_Driver_Crashes,DUI_Crashes,Fixed_Object_Crashes,Intersection_Crashes,Motorcycle_Crashes,Non_Motorist_Crashes,Older_Driver_Crashes,Pedestrian_Crashes,Unlicensed_Driver_Crashes,Work_Zone_Crashes,Wrong_Way_Crashes,Young_Driver_Crashes)
accident_list_1 <- accident_list_1 %>% distinct()

