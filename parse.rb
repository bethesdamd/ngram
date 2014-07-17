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

out = []
(1..max).each do |ng|
	(0..f.size-1-ng).each do |n|
		ng = Ngram.new("testing", 1)
		out.push ng
	end
end

puts out.inspect