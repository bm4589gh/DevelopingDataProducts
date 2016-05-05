library(shiny)

shinyUI(pageWithSidebar(
  headerPanel("Example plot"),
  sidebarPanel(
    sliderInput('ht', 'Select Parent Height',value = 66.5, min = 63.5, max = 73.5, step = 0.5)
  ),
  mainPanel(
    plotOutput('newHist')
  )
))
