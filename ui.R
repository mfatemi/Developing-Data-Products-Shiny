shinyUI(pageWithSidebar(
    headerPanel("Developing Data Products Shiny!"),
    
    sidebarPanel(
        h3('Input an interger to calculate the rnorm of the value and show the histogram'),
        
        numericInput(inputId="text1", label = "number of observations for a rnorm function", value=100)
        
    ),
    mainPanel(
        p('number of observations: '),
        textOutput('text1'),
        plotOutput('distPlot'),
        p('Summary of rnorm results'),
        verbatimTextOutput('sum')
        
    )
))