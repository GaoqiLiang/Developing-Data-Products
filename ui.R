library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Baby Math"),
  sidebarPanel(
    textInput(inputId = "id1", label = "The first value"),
    textInput(inputId = "id2", label = "The second value"),
    
#     checkboxGroupInput("id3","checkbox",
#                        c("+" = "plus",
#                          "-" = "minus",
#                          "*"="multiplication",
#                          "/"="division"
#                         )),
     actionButton("goButton","Go")
  ),
   
  
  
  mainPanel(
    h3('Result Show'),
    
#     h4('You choose to do calculation of :'),
#     verbatimTextOutput("outputdecision"),
    
    
    h4('Plus:'),
    verbatimTextOutput("outputresult1"),
    
    h4('Minus:'),
    verbatimTextOutput("outputresult2"),
    
    h4('Multiplication:'),
    verbatimTextOutput("outputresult3"),
    
    h4('Division:'),
    verbatimTextOutput("outputresult4"),

    
    p('Note: This App is a simple example to show the mathmatical calculations, including + - * /,called Baby Math.')
  )
))