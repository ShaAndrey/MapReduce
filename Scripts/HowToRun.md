To simply run MapReduce for this problem, you can use scripts from this folder in command line. First, put your input data into a file, les's call it **input.txt**.
Then it's enough to do the following:

**./mapreduce map ./map input.txt map_output.txt**

**./mapreduce reduce ./reduce map_output.txt reduce_output.txt**

Scripts will create some extra files for Reduces inputs and outputs, but after that the result is in **reduce_output.txt** file.
