#test assumptions and criteria taken from:
#https://d396qusza40orc.cloudfront.net/rprog%2Fdoc%2FProgAssignment3.pdf
source('best.R')

test.heart_attack_examples <- function()
{
  #prove the upcasing works commented out as this was a feature not required
  #in the assignment
  #checkEquals(best('tx','heart attack'), best('TX', 'heart attack'))
  checkEquals(best('TX','heart attack'), "CYPRESS FAIRBANKS MEDICAL CENTER")
  checkEquals(best("MD", "heart attack"), "JOHNS HOPKINS HOSPITAL, THE")
}

test.heart_failure_examples <- function()
{
  checkEquals(best('TX','heart failure'), "FORT DUNCAN MEDICAL CENTER")
}

test.pneumonia_examples <- function()
{
  checkEquals(best("MD", "pneumonia"), "GREATER BALTIMORE MEDICAL CENTER")
}

test.error_examples <- function()
{
  checkException(best("BB", "heart attack"), 'invalid state')
  checkException(best("NY", "hert attack"), 'invalid outcome')
}
