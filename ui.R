# Rely on the 'WorldPhones' dataset in the datasets
# package (which generally comes preloaded).
library(datasets)

# Use a fluid Bootstrap layout
fluidPage(    
    # Give the page a title
    titlePanel("Cancer incidence"),
    # Generate a row with a sidebar
    sidebarLayout(      
        # Define the sidebar with one input
        sidebarPanel(
            selectInput("country", "Country:", 
                        choices=colnames(df)),
            hr(),
            helpText("Cancer incidences by year.")
        ),
        # Create a spot for the barplot
        mainPanel(
            plotOutput("incidencePlot")  
        )
    )
)
