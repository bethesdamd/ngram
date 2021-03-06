# parse.rb
# Author: David Swearingen
# Date: July 16 2014
#
# Parses n-grams from a document, contained in String.  Removes punctuation.
# Variable 'max' specifies largest n-gram size, e.g. specifying max = 3 means create 1, 2 and 3-grams
# Assumptions:  
# 	- The documents are not enormous (but they certainly could be hundreds of pages.)
# General approach: use Ruby split method to tokenize the document on white space.  This is fast, reliable, and keeps the code tight.  These word tokens are put in a list.  From this list we then extract the n-grams.  Lists are easy to work with and this creates a good separation of concerns: we aren't mixing tokenizing code with ngram extraction code.  The ngram code is a series of nested loops.  This is the only part of the code that requires another developer to pay attention, but it's clean, tight and rational and the design pattern works and shouldn't ever need tinkering.

# Maximum number of n-grams to create
max = 3

# The document is stored in String s
s = "one two three, four five."

# Store stop words in a hash, which has very high-speed lookup
# These would be read in from a file and stored in the hash with something like:
# File.open("stop.txt").each do |v| stop[v.strip] = 1 end
stop = {'a' => 0, 
		'an' => 0,
		'the' => 0,
		'of' => 0
		}

# Ngram class holds the ngram text in String @text, and the size of the ngram in @size
# Creating a class is perhaps a little overkill for a simple program, but it's good programming practice
# and it keeps some of the later code easier to read; plus it makes it very easy to add
# new features later that may not be anticipated now.
class Ngram
	def initialize(text, size)
		@text = text
		@size = size
	end
	attr_accessor :text, :size
end

f = []
# Split the document on white space.  Clean up the terms. Then create an array containing every word in the document.
s.split().each do |t|   
	t.gsub!(/[^a-zA-Z ]/,'')  # remove punctuation
	next if stop.has_key? t  #  Skip adding this if it's a stop word
	f.push(t.strip)
end

# arr_ngram_objects will be an array holding all the ngrams
arr_ngram_objects = []
(1..max).each do |ngsize|  # for each n-gram size, e.g. the 1-grams, 2-grams and 3-grams
	(0..f.size-ngsize).each do |term|  # for each term in the list
		temp = []
		(0..ngsize-1).each do |word|   # e.g. for a 2-gram, loop twice to grab two terms
			temp.push(f[term + word])
		end
		ngram_obj = Ngram.new(temp.join(" "), ngsize)
		arr_ngram_objects.push ngram_obj
	end
end

def print arr
	arr.each do |n| puts n.text + " " + n.size.to_s end
end

puts "By Size:"
arr_ngram_objects.sort! { |a,b| a.size <=> b.size }
print(arr_ngram_objects)

puts "\nAlphabetically:"
arr_ngram_objects.sort! { |a,b| a.text <=> b.text }
print(arr_ngram_objects)





