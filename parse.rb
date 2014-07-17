#  parse.rb

max = 3

s = "one two three four five"

class Ngram
	def initialize(text, size)
		@text = text
		@size = size
	end
	attr_accessor :text, :size
end

f = []
s.split().each do |t|
	# remove punctuation
	# remove noise words
	f.push(t.strip)
end

arr_ngram_objects = []
(1..max).each do |ngsize|  # for each n-gram size, e.g. the 1-grams, 2-grams and 3-grams
	(0..f.size-ngsize).each do |term|  # for each term in the list  0-4
		temp = []
		(0..ngsize-1).each do |word|   # 0-3
			temp.push(f[term + word])
		end
		puts "ngram: " + temp.inspect
		ngram_obj = Ngram.new(temp.join(" "), ngsize)
		arr_ngram_objects.push ngram_obj
	end
end

puts arr_ngram_objects.inspect