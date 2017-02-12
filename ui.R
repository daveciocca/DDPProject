library(shiny)

shinyUI(fluidPage(
  titlePanel("Stock Charting"),
     
  sidebarLayout(
    sidebarPanel(
      helpText("Input a valid stock ticker to display a chart for that stock."),
      helpText("The chart will display time series price and volume data  
               back to Jan 2007, or since inception for newer issues."),
         
      textInput("symb", label = h3("Input Stock Ticker"), value = "FCX") 
                           ),
      # Output for chart
      mainPanel(plotOutput("plot"))
    )
))