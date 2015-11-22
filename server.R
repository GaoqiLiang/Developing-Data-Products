library(shiny)

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