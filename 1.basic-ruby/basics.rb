# Types built in
"Sponge Bob".class              #=> String
12.class                        #=> Integer
3.14.class                      #=> Float
["Sponge Bob", 12, 3.14].class  #=> Array
true.class                      #=> TrueClass
false.class                     #=> FalseClass
(1..100).class                  #=> Range

# To Integer
'1984'.to_i

# To String
1984.to_s

# Sort
['Huey', 'Dewey', 'Louie'].sort

# Range
(1..10).to_a       #=> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
(1...10).to_a      #=> [1, 2, 3, 4, 5, 6, 7, 8, 9]
