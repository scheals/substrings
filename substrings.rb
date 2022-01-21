def substrings(string, dictionary)
  string.split(" ").reduce(Hash.new(0)) do |word_count, word|
    substrings = dictionary.select { |dictionary_word| word.downcase.include?(dictionary_word) }
    substrings.reduce(word_count) do |word_count, substring|
      word_count[substring] += 1
      word_count
    end
    word_count
  end
end

p substrings("Testing", ["Testing", "testing", "undefined", "filler"])
p substrings("This this is a test testing Testing a method...", ["this", "is", "a", "test", "method", "testing", "A", "filler", "ghost"])
p substrings("Howdy partner, sit down! How's it going?", ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"])
