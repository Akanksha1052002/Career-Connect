/*

document.addEventListener('DOMContentLoaded', function() {
    document.querySelector('.form').addEventListener('submit', function(event) {
        event.preventDefault();
        
        // Get form values
        var name = document.getElementById('name').value;
        var email = document.getElementById('email').value;
        var phonenumber = document.getElementById('phonenumber').value;
        var password = document.getElementById('password').value;
        var confirm_password = document.getElementById('confirm_password').value;
        var gender = document.querySelector('input[name="gender"]:checked');
        var user_type = document.querySelector('input[name="user_type"]:checked');
        var agreement = document.getElementById('check').checked;

        // Validation
        if (name.trim() === '') {
            alert('Please enter your name');
            return;
        }

        if (email.trim() === '') {
            alert('Please enter your email');
            return;
        }

        if (phonenumber.trim() === '' || isNaN(phonenumber) || phonenumber.length !== 10) {
            alert('Please enter a valid 10-digit phone number');
            return;
        }

        if (password.trim() === '') {
            alert('Please enter a password');
            return;
        }

        if (password !== confirm_password) {
            alert('Passwords do not match');
            return;
        }

        if (!gender) {
            alert('Please select your gender');
            return;
        }

        if (!user_type) {
            alert('Please select your user type');
            return;
        }

        if (!agreement) {
            alert('Please agree to the terms and conditions');
            return;
        }

        // If all validations pass, you can submit the form
        //alert('Form submitted successfully');
        // You can uncomment the next line to submit the form programmatically
        // this.submit();
    });
});



*/




function validateForm() {
            var name = document.getElementById("name").value;
            var email = document.getElementById("email").value;
            var phone = document.getElementById("phonenumber").value;
            var password = document.getElementById("password").value;
            var confirm_password = document.getElementById("confirm_password").value;
            var gender = document.querySelector('input[name="gender"]:checked');
            var user_type = document.querySelector('input[name="type"]:checked');
            var check = document.getElementById("check");

            if (name.trim() == "") {
                alert("Name must be filled out");
                return false;
            }

            if (email.trim() == "") {
                alert("Email must be filled out");
                return false;
            }

            if (!phone.match(/^\d{10}$/)) {
                alert("Please enter a valid 10-digit phone number");
                return false;
            }

            if (password.trim() == "") {
                alert("Password must be filled out");
                return false;
            }

            if (confirm_password.trim() == "") {
                alert("Confirm Password must be filled out");
                return false;
            }

            if (password != confirm_password) {
                alert("Passwords do not match");
                return false;
            }

            if (!gender) {
                alert("Please select a gender");
                return false;
            }

            if (!user_type) {
                alert("Please select a user type");
                return false;
            }

            if (!check.checked) {
                alert("Please agree to the Terms & Conditions");
                return false;
            }

            return true;
        }
























