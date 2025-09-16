def substrings(words, array_of_words)
  list_of_words = words.split
  new_list_of_words = Array.new
  for word in list_of_words
    for i in array_of_words
      if word.include?(i)
        new_list_of_words.push(i)
      end
    end
  end
  new_list_of_words.reduce(Hash.new(0)) do |word, score|
    word[score] += 1
    word
  end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i",
"low","own","part","partner","sit"]

puts substrings("Howdy partner, sit down! How's it going?", dictionary)