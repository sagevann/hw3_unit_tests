#RUnit Testing for fun and profit

While there is the 'submit' option for the coursera courses, going through all that dialog just to see if your code works is time consuming and unhelpful. Therefore, I learned a little from:

[http://www.johnmyleswhite.com/notebook/2010/08/17/unit-testing-in-r-the-bare-minimum/]

And set about making unit tests for the homework.

This is a work in progress, but all the 'best.R' code works:

## Usage instructions
1. Clone this repo into the same directory as your best.R file
2. Load up RStudio, install RUnit by typing: 
``` install.packages('RUnit')
```
3. Run the tests like so
``` source('run_tests.R') ```