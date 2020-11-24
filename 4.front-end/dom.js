document.querySelector(CSS_SELECTOR);
const list = document.querySelector("#players");
// to select
ul .active     /* Descending combinator */
ul > .active   /* Child combinator */

// Appending content
list.insertAdjacentHTML("beforeend", "<li>Luke</li>");
list.insertAdjacentHTML("beforeend", "<li>Anakin</li>");

// Subset of a dom
const list = document.querySelector("#players");
const element = list.querySelector(".red");
console.log(element.innerText);
// Anakin

// Show, Hide
// Hide
element.style.display = "none";
// Show
element.style.display = "";

// Adding, removing classes
element.classList.add("red");
element.classList.remove("red");
element.classList.toggle("red");

// Read
<input name="email" id="email" value="paul@gmail.com" />
const emailInput = document.getElementById("email");
console.log(emailInput.value);

// Change HTML
home.innerHTML = "Le Wagon <strong>rocks</strong>!"; // Update HTML
