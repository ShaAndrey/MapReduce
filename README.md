# MapReduce
Simple MapReduce implementation for a particular problem.

Given a text with lines of the form **<key, text part>**. Keys and text parts are separated by tab. We need to count all words in the text.

Example:

*Input:*

Key    bus car bus car train car bus car train bus

key     train bus bus car

Key    car car bus train

*Map output:*

bus    1

car    1

bus    1

car    1

train    1

car    1

bus    1

car    1

train    1

bus    1

train    1

bus    1

bus    1

car    1

car    1

car    1

bus    1

train    1

*Single reduce input:*

bus    1

bus    1

bus    1

bus    1

bus    1

bus    1

bus    1

*Single reduce output:*

bus    7

*MapReduce output:*

bus    7

car   7

train   4

