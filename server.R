# Rely on the 'WorldPhones' dataset in the datasets
# package (which generally comes preloaded).
library(datasets)
df <- read.csv("incidences.csv")
rownames(df) <- df[1][,1]
df <- df[-1]
# Define a server for the Shiny app
function(input, output) {
  
  # Fill in the spot we created for a plot
  output$incidencePlot <- renderPlot({
    
    # Render a barplot
    barplot(df[,input$country]*1000, 
            main=input$country,
            names.arg=rownames(df),
            ylab="Incidences",
            xlab="Year")
  })
}

