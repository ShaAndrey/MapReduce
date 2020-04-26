# MapReduce
Simple MapReduce C++ implementation for a particular problem. Actually, MapReduce script, which connects Map and Reduce parts, does not depend on this problem, so it can be used with other Map and Reduce scripts. To run the C++ code you will need to install **Boost library**: https://www.boost.org/doc/.

**Problem:** Given a text with lines of the form **<key, text part>**. Keys and text parts are separated by tab. We need to count all words in the text. (Here keys don't matter, so we can ignore them).

Example:

**Input:**

Key    bus car bus car train car bus car train bus

key     train bus bus car

Key    car car bus train

**Map output:**

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

**Single reduce input:**

bus    1

bus    1

bus    1

bus    1

bus    1

bus    1

bus    1

**Single reduce output:**

bus    7

**MapReduce output:**

bus    7

car   7

train   4

To run this in your command line, check **Scripts/HowToRun.md**. 
