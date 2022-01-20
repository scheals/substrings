def substrings(string, dictionary)
  string.split(" ").reduce(Hash.new(0)) do |word, word_count|
    word[word_count.downcase] += 1
    word
  end
end

p substrings("Testing", ["Testing", "testing", "undefined", "filler"])
p substrings("This this is a test testing a method.", ["this", "is", "a", "test", "method", "testing", "A", "filler", "ghost"])
p substrings("Howdy partner, sit down! How's it going?", ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"])
