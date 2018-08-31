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
