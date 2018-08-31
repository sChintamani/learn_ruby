def echo(inp)
  inp
end

def shout(inp)
  inp.upcase
end

def repeat(inp, how_many_times = 2)
  rpt = inp
  (how_many_times.to_i - 1).times { rpt += " #{inp}" }
  rpt
end

def start_of_word(inp, how_many_letters = 1)
  inp.to_s[0..how_many_letters - 1]
end

def first_word(inp)
  inp.split(" ")[0]
end

def titleize(inp)
  inp_arr = inp.split(" ")
  out_arr = []
  inp_arr.each_with_index do |word, index|
    out_arr << word[0].upcase + word[1..word.length]
  end
  out_arr.join(" ")
end
