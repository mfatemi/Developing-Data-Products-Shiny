
shinyServer(
    function(input, output) {
  
        output$text1 <- renderText({input$text1})
        t<-reactive(rnorm(input$text1))
        
        output$sum <- renderPrint({
                t<-t() 
                summary(t)
                })
        output$distPlot <- renderPlot(
            { t<-t() 
              hist(t)
             })
        
        
    }
)