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

def multiply(*args)
  product = 1
  args.each do |arg|
    product *= arg.to_i
  end
  product
end

def power(x, y)
  case x
  when 0 then 0
  else
    case y
    when 0 then 1
    else
      pow = 1
      y.times { pow *= x }
      pow
    end
  end
end

def factorial(n)
  case n
  when 0 then 1
  else
    fac = 1
    n.to_i.downto(1) { |num| fac *= num }
    fac
  end
end
