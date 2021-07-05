def reverser
  yield.split(' ').map(&:reverse).join(' ')
end

def adder(num = 1)
  yield + num
end

def repeater(num = 3)
  yield true

  n = 0
  loop do
    n += 1
    yield n
    break if n == num - 1
  end
end
