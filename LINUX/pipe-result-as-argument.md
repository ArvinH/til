# How to Pass the output of previous command to next as an argument

Passing input by stdin:

`ls | wc -l`
This will count the lines in the output of ls

Passing input by command line arguments:

`wc -l $(ls)`

