class Book
  def title
    @title
  end

  def title=(theTitle)
    @title = capitalizeWords(theTitle)
  end

  private

  def capitalizeWords(inp)
    little_words = %w(a an the and in of)
    inp_arr = inp.split(" ")
    out_arr = []
    inp_arr.each_with_index do |word, index|
      if little_words.include?(word) && index != 0
        out_arr << word
      else
        out_arr << word[0].upcase + word[1..word.length]
      end
    end
    out_arr.join(" ")
  end
end
