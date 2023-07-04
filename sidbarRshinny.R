

library(shiny)

# Define UI for application that draws a histogram
ui <- fluidPage(
    # Sidebar with a slider input for number of bins 
  titlePanel("Central limit theorem"),
    sidebarLayout(
        sidebarPanel(
            sliderInput("m",
                        "Number of samples:",2,
                        min = 1,
                        max = 100,
                        value = 30)
        ),

        # Show a plot of the generated distribution
        mainPanel(
           plotOutput("hist")
        )
    )
)
# Define server logic required to draw a histogram
server <- function(input, output, session) {
    output$hist <- renderPlot({
        # generate bins based on input$bins from ui.R
        means<-replicate(1e4, mean(runif(input$m)))
        # draw the histogram with the specified number of bins
        hist(means, breaks=20)
    }, res=96)
}

# Run the application 
shinyApp(ui = ui, server = server)
