library(shiny)
library(ggplot2)
library(scales)
shinyServer(function(input, output) {
  
  output$ndisPlot <- renderPlot({
    n <- input$n
    mean <- input$mean
    sd <- input$sd
    x1 <- rnorm(n, mean, sd)
    library(ggplot2)
    ggplot() + aes(x=x1) + geom_bar(aes(y=(..count..)/sum(..count..)),fill="blue", color = "black") + 
      coord_cartesian(xlim=c(0,50), ylim = c(0,0.1)) + 
      scale_y_continuous(labels=percent) + ylab("Percent")
  })
  output$n <- renderPrint({
    input$n
  })
  output$mean <- renderPrint({
    input$mean
  })
  output$sd1 <- renderPrint({
    input$sd
  })

}
)