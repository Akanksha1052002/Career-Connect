// Function to validate phone number


/*

function validatePhoneNumber(phone) {
    var phoneRegex = /^[6-9]\d{9}$/;
    return phoneRegex.test(phone);
}

// Function to validate password
function validatePassword(password) {
    var passwordRegex = /^(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$/;
    return passwordRegex.test(password);
}

// Function to validate email
function validateEmail(email) {
    var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    return emailRegex.test(email);
}


// Function to handle form submission
function validateForm() {
    var phone = document.getElementById('contact').value;
    var password = document.getElementById('pass').value;
    var confirmPassword = document.getElementById('re_pass').value;
    var email = document.getElementById('email').value;

    var errors = [];

    // Validate phone number
    if (!validatePhoneNumber(phone)) {
        errors.push("Phone number should be 10 digits starting with 6-9.");
    }

    // Validate password
    if (!validatePassword(password)) {
        errors.push("Password should contain at least 8 characters, one uppercase letter, one digit, and one special character.");
    }

    // Confirm password
    if (password !== confirmPassword) {
        errors.push("Passwords do not match.");
    }

    // Validate email
    if (!validateEmail(email)) {
        errors.push("Invalid email format.");
    }

    // Display errors if any
    if (errors.length > 0) {
        alert(errors.join("\n"));
        return false; // Prevent form submission
    }

    return true; // Allow form submission
}

*/

// Attach validation function to form submission
// document.getElementById('register-form').addEventListener('submit', validateForm);
