library(shiny)
library(shiny)

ui <- fluidPage(
  sliderInput(inputId='num',
              label='Choose a number',
              value=25,min=1,max=100),
  textInput(inputId = 'title',
            label='Write a title',
            value = 'Histogram of random values'),
  plotOutput("hist")
)

server <- function(input, output, session) {
  output$hist<-renderPlot({
    hist(rnorm(input$num),main=input$title)
  })
  
}

shinyApp(ui, server)