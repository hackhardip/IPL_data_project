library(shiny)
library(shinydashboard)

shinyUI(
  dashboardPage(
    dashboardHeader(title = "IPL Analytics"),
    dashboardSidebar(
      sliderInput("bins","Number of breaks",1,100,50),
      menuItem("Player1"),
        menuSubItem("p_1"),
        menuSubItem("p_2"),
      menuItem("Player2"),
      menuItem("Player3")
    ),
    dashboardBody(
      fluidRow(
        box(plotOutput("histogram"))
      )
    )
  )
)