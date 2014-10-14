#!/usr/bin/env ruby

# Word frequency counter
puts "Please enter your text. >"
texts = gets.chomp
words = texts.split(" ")

puts "Please enter words to exclude. >"
excludes = gets.chomp

exclude_list = excludes.split(",").map{|wd| wd.downcase.strip}

# set up a new hash called frequencies, with default value 0
frequencies = Hash.new(0)

# # iterate over the array of words, putting each into the hash and incrementing by 1
words.each do |word|
	frequencies[word.downcase] +=1 unless exclude_list.include?(word.downcase)
end

# print each word out
frequencies.each do |word, value|
    puts word + " => " + value.to_s
end