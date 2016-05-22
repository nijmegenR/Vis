# Load necessary libraries
library(gsheet)
library(googleVis)

# Read data (in this case from Google Spreadsheet)
rawData <-
  gsheet2tbl(
    'https://docs.google.com/spreadsheets/d/1vc7Uq-rYz-sVhE62AwmTTIjax5BxAFa5mJiidiWr81o/edit?usp=sharing'
  )

# Change table into class data frame
rawData <- as.data.frame(rawData)

# Ordering of the coloring variable is necessary for logical color matching
newData <- rawData[order(rawData[,'Kans.of.bedreiging'], decreasing = TRUE),]

# Build the bubble plot
Bubble <- gvisBubbleChart(newData,
                          idvar="Voor.en.achternaam", 
                          xvar="Waarschijnlijkheid", yvar="Gevolgen",
                          colorvar="Kans.of.bedreiging",
                          options=list(
                            title="Wet- en Regelgeving wordt nog complexer en stringenter",
                            hAxis='{minValue:1, maxValue:5, title:"Waarschijnlijkheid"}',
                            vAxis='{minValue:1, maxValue:5, title:"Gevolgen"}',
                          width = 600,
                          height = 600))
