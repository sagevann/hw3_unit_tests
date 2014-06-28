#test assumptions and criteria taken from:
#https://d396qusza40orc.cloudfront.net/rprog%2Fdoc%2FProgAssignment3.pdf

source("rankhospital.R")



test.numeric_rank_example <- function()
{
  checkEquals( rankhospital('TX','heart failure', 4), "DETAR HOSPITAL NAVARRO")
}

test.best_rank_example <- function()
{
  checkEquals( rankhospital('TX','heart failure'), "FORT DUNCAN MEDICAL CENTER")
  checkEquals( rankhospital('TX','heart failure'), rankhospital('TX','heart failure','best'))
}

test.worst_rank_example <- function()
{	
  checkEquals( rankhospital('MD','heart attack', 'worst'), "HARFORD MEMORIAL HOSPITAL")
}


test.overrun_rank_example <- function()
{
  checkEquals( rankhospital('MN','heart attack', 5000), as.character(NA))
}
