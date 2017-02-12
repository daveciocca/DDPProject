library(quantmod)

shinyServer(function(input, output) {
  
  #Select the stock to plot
  dataInput <- reactive({
    pxData <- getSymbols(input$symb, auto.assign = FALSE)
  })
      
  # Plot the stock chart
  output$plot <- renderPlot({
    pxData <- dataInput()
    chartSeries(pxData, type = "line", up.col = "gold")
    })
})