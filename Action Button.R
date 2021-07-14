library(shiny)
library(shiny)

ui <- fluidPage(
  actionButton(inputId = "clicks",
               label = "Click Me")
)

server <- function(input, output, session) {
  observeEvent(input$clicks,{print(as.numeric(input$clicks))})
  
}

shinyApp(ui, server)