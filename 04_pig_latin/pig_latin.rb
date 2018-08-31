def translate(inp)
  outp = []
  inp.split(" ").each do |word|
    cons_result = word_beginning_with_n_consonants(word, 10)
    consonents, how_many = cons_result[0], cons_result[1]
    outp << word[how_many..inp.length] + consonents + "ay"
  end
  outp.join(" ")
end

def word_beginning_with_n_consonants(word, n)
  vowels = "aeiouAEIOU"
  consonants_so_far, num_consonants = Array.new, 0
  word.split("").each_with_index do |letter, index|
    if vowels.include?(letter)
      break
    else
      consonants_so_far << letter
      num_consonants = (index + 1)
    end
  end
  [consonants_so_far.join(""), num_consonants]
end
