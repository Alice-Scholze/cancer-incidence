# Rely on the 'WorldPhones' dataset in the datasets
# package (which generally comes preloaded).
library(datasets)

WorldPhones

setwd("~/Projects/IAA/ciencia_de_dados/cancer_incidence")

# read csvs incidence
incidence2025 <- read.csv("data/incidence_2025.csv")
incidence2030 <- read.csv("data/incidence_2030.csv")
incidence2035 <- read.csv("data/incidence_2035.csv")
incidence2040 <- read.csv("data/incidence_2040.csv")
incidence = NULL

asia <- c(
  incidence2025$X2020[incidence2025$Label == 'Asia'],
  incidence2025$Prediction.in.2025[incidence2025$Label == 'Asia'],
  incidence2030$Prediction.in.2030[incidence2025$Label == 'Asia'],
  incidence2035$Prediction.in.2035[incidence2025$Label == 'Asia'],
  incidence2040$Prediction.in.2040[incidence2025$Label == 'Asia']
)

europe <- c(
  incidence2025$X2020[incidence2025$Label == 'Europe'],
  incidence2025$Prediction.in.2025[incidence2025$Label == 'Europe'],
  incidence2030$Prediction.in.2030[incidence2025$Label == 'Europe'],
  incidence2035$Prediction.in.2035[incidence2025$Label == 'Europe'],
  incidence2040$Prediction.in.2040[incidence2025$Label == 'Europe']
)

latin.america.and.caribbean <- c(
  incidence2025$X2020[incidence2025$Label == 'Latin America and Caribbean'],
  incidence2025$Prediction.in.2025[incidence2025$Label == 'Latin America and Caribbean'],
  incidence2030$Prediction.in.2030[incidence2025$Label == 'Latin America and Caribbean'],
  incidence2035$Prediction.in.2035[incidence2025$Label == 'Latin America and Caribbean'],
  incidence2040$Prediction.in.2040[incidence2025$Label == 'Latin America and Caribbean']
)

northern.america <- c(
  incidence2025$X2020[incidence2025$Label == 'Northern America'],
  incidence2025$Prediction.in.2025[incidence2025$Label == 'Northern America'],
  incidence2030$Prediction.in.2030[incidence2025$Label == 'Northern America'],
  incidence2035$Prediction.in.2035[incidence2025$Label == 'Northern America'],
  incidence2040$Prediction.in.2040[incidence2025$Label == 'Northern America']
)

africa <- c(
  incidence2025$X2020[incidence2025$Label == 'Africa'],
  incidence2025$Prediction.in.2025[incidence2025$Label == 'Africa'],
  incidence2030$Prediction.in.2030[incidence2025$Label == 'Africa'],
  incidence2035$Prediction.in.2035[incidence2025$Label == 'Africa'],
  incidence2040$Prediction.in.2040[incidence2025$Label == 'Africa']
)

oceania <- c(
  incidence2025$X2020[incidence2025$Label == 'Oceania'],
  incidence2025$Prediction.in.2025[incidence2025$Label == 'Oceania'],
  incidence2030$Prediction.in.2030[incidence2025$Label == 'Oceania'],
  incidence2035$Prediction.in.2035[incidence2025$Label == 'Oceania'],
  incidence2040$Prediction.in.2040[incidence2025$Label == 'Oceania']
)

df = NULL
df <- data.frame(asia, 
                 africa, 
                 oceania, 
                 europe, 
                 latin.america.and.caribbean, 
                 northern.america
                )
colnames(df) <-c('Asia','Africa','Oceania','Europe','Latin_America_and_Caribbean', 'Northern_America')
rownames(df) <- c(2020,2025,2030,2035,2040)
df
write.csv(df, 'data/incidences.csv')

head(df)
df <- read.csv("incidences.csv")

