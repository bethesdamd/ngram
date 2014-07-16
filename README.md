ngram
=====

Simple approach to creating ngrams in Ruby.

Instructions

 

Fun with N-Grams

Please complete the following and return it to Abe Abrams at abe.abrams@thedarkstargroup.com.

1) Your team has been tasked with building a custom software system that does classification of textual documents, and you’ve been instructed to not use any COTS packages, nor any special text processing or NLP libraries (i.e. write the code from scratch).  As a first step in the process, your Project Manager asks you to create a piece of code that identifies all the unique words and phrases up to length M in a single unstructured textual document (these words and phrases are called “n-grams” - see http://en.wikipedia.org/wiki/N-gram for more information on n-grams if you are curious), counts their frequency, and outputs the results.

The inputs to this program are the textual document and “M”, the maximum length n-gram to be considered.  

The results should be sorted first by length of n-gram (1-word phrases first, then 2-word phrases, then 3-word phrases, etc.) and then alphabetically.  

As an example, a document consisting of the text “a good puzzle is a fun puzzle”, with an M-value of 2, would lead to the following output:

a 2
fun 1
good 1
is 1
puzzle 2
a fun 1
a good 1
fun puzzle 1
good puzzle 1
is a 1
puzzle is 1

Using any programming language you like, please write working, efficient code that does what is described above and include documentation so a developer can read and understand what you did (and why you did it, if you like - more detail here is better, as it helps us understand your reasoning process).

2) In text processing it is common to filter out words that don’t typically mean anything before doing an n-gram analysis, such as the words “a” or “the”.  These words are called “Stop Words” (see http://en.wikipedia.org/wiki/Stop_words for a bit more detail if you are curious).  After seeing the success of your n-gram analysis code above, your Project Manager asks you to modify it to remove stop words, which will be provided in a text file as an additional input to the code.  What would your approach be to removing the stop words? (No need to write more code, just describe what you would do, and why.)

3) The customer loves your n-gram analysis code that removes stop words, and the decision is made to utilize it as a core piece of an enterprise system that will process and categorize millions of documents a day.  Describe the technology stack you would choose if you were architecting this enterprise solution, include any assumptions you make, and describe any ways in which you would want to modify your code.  Pay special attention to performance given the large number of documents to be processed. (No need to write more code, just describe your thoughts.)


