library(shiny)
source("Data.R")

# Define UI for application
ui <- shinyUI(fluidPage(
  titlePanel("Retail Banking Risk Mapping"),
 
  sidebarLayout(position = "left",

## Sidebar with checkboxes 
                sidebarPanel(checkboxGroupInput("checkGroup", 
                                                label = "Perceptie", 
                                                choices = list("Kans", 
                                                               "Bedreiging"),
                                                selected = c("Kans", "Bedreiging"))),
## Mainpanel with bubble chart
                mainPanel(h2("Risk Map"),
                          htmlOutput("maps"))
  )
))

# Define server for application
server <- shinyServer(function(input, output) {
  
## Subset the initial data frame by the values of the selected checkboxes
    df <- reactive({
    new_df <- newData[newData$Kans.of.bedreiging %in% input$checkGroup, c(2:5)]

## and add dummy variables to keep color matching    
    dummy_df <- data.frame(
      Voor.en.achternaam = c("a", "b"),
      Waarschijnlijkheid = c(NA,NA),
      Gevolgen = c(NA,NA),
      Kans.of.bedreiging = c("Kans", "Bedreiging")
      )
    new_df <- rbind(new_df, dummy_df)
    new_df <- new_df[order(new_df[,'Kans.of.bedreiging'], decreasing = TRUE),]
    
    return(new_df)
    })
  

## Build the bubble chart  
  output$maps <-
    renderGvis({
      gvisBubbleChart(
        df(),
        idvar = "Voor.en.achternaam",
        xvar = "Waarschijnlijkheid",
        yvar = "Gevolgen",
        colorvar = "Kans.of.bedreiging",
        options = list(
          title="Wet- en Regelgeving wordt nog complexer en stringenter",
          hAxis = '{minValue:1, maxValue:5, title:"Gevolgen"}',
          vAxis = '{minValue:1, maxValue:5, title:"Waarschijnlijkheid"}',
          width = 700,
          height = 700
        )
      )
    })
  })


# Run the application
shinyApp(ui = ui, server = server)
