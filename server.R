library(shiny)

shinyServer(function(input, output) {
  
  output$ndisPlot <- renderPlot({
    n <- input$n
    mean <- input$mean
    sd <- input$sd
    x <- rnorm(n, mean, sd)
    hist(x, col = "blue")
  })
}
)