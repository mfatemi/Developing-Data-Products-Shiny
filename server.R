library(shiny)
x <<- x + 1
y <<- 0
shinyServer(
    function(input, output) {
        y <<- y + 1
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