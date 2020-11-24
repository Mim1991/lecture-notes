# Unless
unless condition
  # code executed only when condition is not "truthy"
end

# While
while condition
  # executed while condition is truthy
end

# Ternary Operator
condition ? code_when_truthy : code_when_falsey
# example
result = (choice == coin) ? "winner" : "loser"


# Case/When/Else
action = gets.chomp

case action
when "read"
  puts "You are in READ mode"
when "write"
  puts "You are in WRITE mode"
when "exit"
  puts "Bye Bye"
else
  puts "Wrong action"
end

