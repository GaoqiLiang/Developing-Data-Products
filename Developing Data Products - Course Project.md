Developing Data Products - Course Project
========================================================
author: Nikki Lee
date: 22/11/2015

Baby Math Overivew
========================================================

This presentation is being created as part of the developing data product course project. 
In my project I made an simple mathmatic calucator called baby math to show how to use shiny and R-presentation.

- Shiny is to build data product application

- R-presentation or slidify is to create data product related presentations


Baby Math Explaination
========================================================

- This presentation is used to calculate two input values' 4 forms of calcucation, including "plus", "minus", "multiplication", and "division".

- Whenever you enter these two values, just click on the "Go" button, you will get all these calcualtion results.

Baby Math Code I
========================================================


```r
library(shiny)
# server.R
shinyServer(
  function(input,output){

    # output$outputdecision <- renderPrint(input$id3)
    
    a <- reactive({as.numeric(input$id1)})
    b <- reactive({as.numeric(input$id2)})
    
    # c <- input$id3

#     c1 <- renderText({a()+b()})
#     c2 <- renderText({a()-b()})
#     c3 <- renderText({a()*b()})
#     c4 <- renderText({a()/b()})
    

    output$outputresult1 <- renderText({
      input$goButton
      isolate(paste(input$id1, "+", input$id2, "=", as.numeric(input$id1)+as.numeric(input$id2)
                    ))
      
    })

    output$outputresult2 <- renderText({
      input$goButton
      isolate(paste(input$id1, "-", input$id2, "=", as.numeric(input$id1)-as.numeric(input$id2)
                    ))
      
    })
    
    output$outputresult3 <- renderText({
      input$goButton
      isolate(paste(input$id1, "*", input$id2, "=", as.numeric(input$id1)*as.numeric(input$id2)
                    ))
      
    })
    
    output$outputresult4 <- renderText({
      input$goButton
      isolate(paste(input$id1, "/", input$id2, "=", as.numeric(input$id1)/as.numeric(input$id2)
                    ))
      
    })
    

    
  }
)
```

Baby Math Code II
========================================================


```r
library(shiny)
# UI.R
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
```

<!--html_preserve--><div class="container-fluid">
<div class="row">
<div class="col-sm-12">
<h1>Baby Math</h1>
</div>
</div>
<div class="row">
<div class="col-sm-4">
<form class="well">
<div class="form-group shiny-input-container">
<label for="id1">The first value</label>
<input id="id1" type="text" class="form-control" value=""/>
</div>
<div class="form-group shiny-input-container">
<label for="id2">The second value</label>
<input id="id2" type="text" class="form-control" value=""/>
</div>
<button id="goButton" type="button" class="btn btn-default action-button">Go</button>
</form>
</div>
<div class="col-sm-8">
<h3>Result Show</h3>
<h4>Plus:</h4>
<pre id="outputresult1" class="shiny-text-output"></pre>
<h4>Minus:</h4>
<pre id="outputresult2" class="shiny-text-output"></pre>
<h4>Multiplication:</h4>
<pre id="outputresult3" class="shiny-text-output"></pre>
<h4>Division:</h4>
<pre id="outputresult4" class="shiny-text-output"></pre>
<p>Note: This App is a simple example to show the mathmatical calculations, including + - * /,called Baby Math.</p>
</div>
</div>
</div><!--/html_preserve-->
