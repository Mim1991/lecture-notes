"Hello Le Wagon"            // string
42                          // number
3.14                        // number
true                        // boolean
typeof(42)
Number.parseInt('42', 10);
// => 42
(42).toString();
// => '42'
[ 'Hello', 'Le', 'Wagon', 42 ]    // Array
{ name: 'bob', age: 42 }          // Object
{ 'name': 'bob', 'age': 42 }      // Object (the exact same)
firstName.toUpperCase();
// => "PAUL"
firstName.toLowerCase();
// => "paul"
const message = `${firstName} ${lastName} is a drummer`;
// => "Ringo Starr is a drummer";

// arrays
const fruits = [];
fruits.push("Apple"); // Create
fruits[0];            // Read
fruits[0] = "Banana"; // Update
fruits.splice(0, 1);  // Delete (1 item at index 0)

// for each
const beatles = ["paul", "john", "ringo", "george"];
beatles.forEach((beatle) => {
  console.log(beatle.toUpperCase());
});

// Objects
console.log(student.firstName);
// => "Boris" same as
console.log(student['firstName']); // Another way
// => "Boris"
// setting
student.firstName = "Romain";
console.log(student.firstName);
// => "Romain"

