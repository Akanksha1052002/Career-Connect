/**
 * 
 */

 
 // Reference to the container div
const container = document.getElementById('container');

// Counter to keep track of the number of created divs
let divCount = 0;

// Function to create and append empty divs
function createEmptyDiv() {
  const emptyDiv = document.createElement('div');
  emptyDiv.classList.add('empty-div');
  emptyDiv.textContent = `Div ${divCount + 1}`;
  container.appendChild(emptyDiv);
  divCount++;
}


// Function to create more divs when scrolling to the bottom
function handleScroll() {
  if (window.innerHeight + window.scrollY >= document.body.offsetHeight) {
    createEmptyDiv();
  }
}

// Attach scroll event listener
window.addEventListener('scroll', handleScroll);


// name validation of the profile using js

function login() {
  // Get the organization name from input field
  var orgName = document.getElementById('orgName').value;

  // Validate if the input is not empty
  if (orgName.trim() !== '') {
      // Display the organization name
      alert("Welcome, " + orgName + "!");
      // You can further customize this to display the organization name in a specific area of your HTML
      // For example, document.getElementById('organizationName').innerText = orgName;
  } else {
      // Show an error message if the input is empty
      alert("Please enter the organization name.");
  }
}
