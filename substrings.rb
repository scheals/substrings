def substrings(string, dictionary)
  string.split(" ").reduce(Hash.new(0)) do |word_count, word|
    # p dictionary.select { |dictionary_word| word.downcase.include?(dictionary_word) }
    substrings = dictionary.select { |dictionary_word| word.downcase.include?(dictionary_word) }
    substrings = substrings.reduce(Hash.new(0)) do |hash, woot|
      hash[woot] += 1
      hash
      hash
    end
    p substrings
    word_count[substrings] += 1
    word_count
  end
end

# p substrings("Testing", ["Testing", "testing", "undefined", "filler"])
p substrings("This this is a test testing Testing a method...", ["this", "is", "a", "test", "method", "testing", "A", "filler", "ghost"])
p substrings("Howdy partner, sit down! How's it going?", ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"])
