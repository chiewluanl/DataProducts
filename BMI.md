BMI
========================================================
author: Jenn Lee
date: 17 May 2016
autosize: true

My Data Products project - BMI
========================================================

1. Some form of input (widget: textbox, radio button, checkbox, ...)
2. Some operation on the ui input in sever.R
3. Some reactive output displayed as a result of server calculations
4. You must also include enough documentation so that a novice user could use your application.
5. The documentation should be at the Shiny website itself. Do not post to an external link.

BMI Features & Functions
========================================================

- This App have two sections, a sidebar which is on the left of the App and on the right is main screen that contains the results
- The sidebar panel have two(2) control items.
- The 2 inputs allow to enter the weight in KGs and the height in meters.
- Click on the button to view the BMI result.

BMI Project
========================================================

The BMI apps can be viewed at this page : http://rpubs.com/lcluan/181570


Shiny Github Repo Project & Code Reproducibility
========================================================

The code for the shiny apps can be downloaded from the github repo at :-

https://github.com/chiewluanl/DataProducts

This repo contains all the code and data making up this solution. The files and folders are the following:

- BMI.Rpres, ui.R and server.R - The shiny app code/presentation 
- The R Markdown used to create the RStudio Presenter presentation.
- Example of BMI calcuation


```r
height <- 1.60
weight <- 66
BMI_value<-(weight)/((height)^2)
p <- paste("BMI is", as.character(BMI_value))
print(p)
```

```
[1] "BMI is 25.78125"
```
