library(shiny) 
shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("Shiny App Project - Body Mass Index (BMI) Calculator"),
    
    sidebarPanel(
      numericInput('weight', 'Enter your weight in KGs', 60) ,
      numericInput('height', 'Enter your height in meters', 1.67, min = 1.3, max = 2.5, step = 0.01),
      submitButton('Calculate BMI')
    ), 
    mainPanel(
      p('Body mass index (BMI) is a measure of body fat based on height and weight that applies to adult men and women.'),
      p('BMI can be used to indicate if you are overweight, obese, underweight or normal. A healthy BMI score is between 20 and 25.'),
      p('Enter your weight and height using standard or metric measures.'),
      tags$div(
        tags$ul(
          tags$li('BMI <18.5       : Underweight'),
          tags$li('BMI [18.5-24.9] : Normal weight'),
          tags$li('BMI [25-29.9]   : Overweight'),
          tags$li('BMI >=30        : Obesity')
        )
      ),
      
      h4('Please enter your '), 
      p('weight in KGs:'), verbatimTextOutput("inputweightvalue"),
      p('height in meters:'), verbatimTextOutput("inputheightvalue"),
      h4('Your BMI is:'),
      verbatimTextOutput("estimation"),
      p('It means that you are:'),strong(verbatimTextOutput("diagnostic"))
      
      
    )
    
  )   
)