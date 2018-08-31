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
