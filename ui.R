library(shiny)



shinyUI(pageWithSidebar(
  headerPanel("Basic Geometry"),
  sidebarPanel(
    conditionalPanel(condition="input.tabs==1",
                     h3("Intro"),
                     helpText("This application calculates the areas or perimeter of some basic geometric figures"),
                     helpText("click on the tab to select the figure..."),
                     helpText("insert a value in the numeric input and choose what you want to calculate")
    ),
    conditionalPanel(condition="input.tabs==2",
                     h3("Circle"),
                     checkboxGroupInput("idBox2","Select what you want calculate",c("Area"= "1",
                                                           "Circumference"= "2")),
                     numericInput('idRadius2','radius',0, min=0, max=100, step=1)
    ),
    
    conditionalPanel(condition="input.tabs==3",
                     h3("Triangle"),
                     checkboxGroupInput("idBox3","Select what you want calculate",c("Area"= "1",
                                                           "Perimeter"= "2")),
                     numericInput('idVertical3','vertical height',0, min=0, max=100, step=1),
                     numericInput('idBase3','base',0, min=0, max=100, step=1)
    ),
    conditionalPanel(condition="input.tabs==4",
                     h3("Rectangle"),
                     checkboxGroupInput("idBox4","Select what you want calculate",c("Area"= "1",
                                                              "Perimeter"= "2")),
                     numericInput('idVertical4','vertical height',0, min=0, max=100, step=1),
                     numericInput('idBase4','base',0, min=0, max=100, step=1)
    )
  ),
  mainPanel(
    tabsetPanel(
      tabPanel("Intro", 
               value=1,
               p("select one of the TABs above !")
               ), 
      tabPanel("Circle", 
               value=2,
               p("Area"),
               verbatimTextOutput("outArea2"),
               p("Circumference"),
               verbatimTextOutput("outPer2")
               ),
      tabPanel("Triangle", 
               value=3,
               p("Area"),
               verbatimTextOutput("outArea3"),
               p("Perimeter"),
               verbatimTextOutput("outPer3")
               ),
      tabPanel("Rectangle", 
               value=4,
               p("Area"),
               verbatimTextOutput("outArea4"),
               p("Perimeter"),
               verbatimTextOutput("outPer4")
               ),
      id = "tabs"
    )
  )
))