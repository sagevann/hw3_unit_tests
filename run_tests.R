library('RUnit')



test.suite <- defineTestSuite("rprog004 Assignment 3",
                              dirs = file.path("hw3_unit_tests/tests"),
                              testFileRegexp = '^(.*)_spec\\.R')

test.result <- runTestSuite(test.suite)

printTextProtocol(test.result)