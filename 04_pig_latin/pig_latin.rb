def translate(inp, how_many_consonants_at_the_beginning = 1)
  vowels = "aeiouAEIOU"
  how_many_consonants_at_the_beginning.to_i.times do |i|
    if vowels.include?(inp[i])
      "#{inp}ay"
    else
      "#{inp.reverse}ay"
    end
  end
end
