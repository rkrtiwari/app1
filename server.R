library(shiny)
library(scales)
shinyServer(function(input, output) {
  
  output$ndisPlot <- renderPlot({
    n <- input$n
    mean <- input$mean
    sd <- input$sd
    x1 <- rnorm(n, mean, sd)
    hist(x1, breaks=50, col = "red")
  })

}
)
