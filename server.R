library(shiny)
library(data.table)
library(UsingR)
data(galton)
shinyServer(
  function(input, output) {
    output$newHist <- renderPlot({
      hist(galton$child, xlab='Child height', col='lightblue',main='Histogram')
      ht <- input$ht
      lines(c(ht, ht), c(0, 200),col="red",lwd=5)
      dt <- data.table(galton, key="parent")
      cht <- round(dt[parent == ht,mean(child)],1)
      text(63, 150, paste("Parent Height = ", ht))
      text(63, 140, paste("Child Height = ", cht))
    })
  }
)