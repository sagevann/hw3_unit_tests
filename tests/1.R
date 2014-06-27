test.tx_examples <- function()
{
  checkEquals(best('tx','heart attack'), best('TX', 'heart attack'))
  checkEquals(best('tx','heart attack'), "CYPRESS FAIRBANKS MEDICAL CENTER")
  checkEquals(best('tx','heart failure'), "FORT DUNCAN MEDICAL CENTER")
  
}

test.md_examples <- function()
{
  checkEquals(best("MD", "heart attack"), "JOHNS HOPKINS HOSPITAL, THE")
  checkEquals(best("MD", "pneumonia"), "GREATER BALTIMORE MEDICAL CENTER")
  
}
test.error_examples <- function()
{
  checkException(best("BB", "heart attack"), 'invalid state')
  checkException(best("NY", "hert attack"), 'invalid outcome')
  
}
