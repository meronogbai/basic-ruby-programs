def substrings(word, subs)
  words=word.downcase.split(" ")
  result = Hash.new(0)
  subs.each do |s|
    words.each do |w|
      if w.include? s
        result[s] += 1
      end
    end
  end
  return result
end


dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)