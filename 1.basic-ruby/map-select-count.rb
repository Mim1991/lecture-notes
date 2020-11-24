# 1. Map to transform an array into another one
musicians = ['David Gilmour', 'Roger Waters', 'Richard Wright', 'Nick Mason']

upcased_musicians = musicians.map do |musician|
  musician.upcase
end

p upcased_musicians
# => ['DAVID GILMOUR', 'ROGER WATERS', 'RICHARD WRIGHT', 'NICK MASON']


# 2. Count elements where condition is true
musicians = ['David Gilmour', 'Roger Waters', 'Richard Wright', 'Nick Mason']

r_musicians_count = musicians.count do |musician|
  musician.start_with?("R")
end

p r_musicians_count
# => 2


# 3. Select
musicians = ['David Gilmour', 'Roger Waters', 'Richard Wright', 'Nick Mason']

r_musicians = musicians.select do |musician|
  musician.start_with?("R")
end

p r_musicians
# => ['Roger Waters', 'Richard Wright']
