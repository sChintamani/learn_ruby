#write your code here
def add(x, y)
  x + y
end

def subtract(subtrahend, minuend)
  subtrahend - minuend
end

def sum(num_arr)
  total = 0
  num_arr.each do |num|
    total += num
  end
  total
end
