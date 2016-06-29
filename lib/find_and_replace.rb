require('pry')

class String
  define_method (:find_replace) do |word_to_find, replace_word|
    words = self.downcase().split()
    for i in 0..(words.length()-1)
      words[i].gsub! (word_to_find.downcase()),(replace_word.downcase())
    end
    return words.join(" ");
  end
end
