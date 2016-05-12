library(shiny)

shinyUI(fluidPage(
  
  titlePanel("Random Number Generation"),
  
  sidebarLayout(
    sidebarPanel(
      numericInput("n", "Number of Observations:", 10000, min = 100, max = 100000),
      numericInput("mean", "Mean:", 10, min = 1, max = 100),
      numericInput("sd", "Standard Deviation:", 2, min = 0, max = 100)
    ),
    
    mainPanel(
      plotOutput("ndisPlot")
    )
  )
  
  
))