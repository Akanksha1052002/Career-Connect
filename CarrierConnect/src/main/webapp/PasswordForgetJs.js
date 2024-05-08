document.addEventListener("DOMContentLoaded", function() {
    var loginForm = document.getElementById('loginForm');
    loginForm.addEventListener('submit', function(event) {
        var emailInput = document.getElementById('email');
        var emailValue = emailInput.value.trim();
        var passwordInput = document.getElementById('password');
        var passwordValue = passwordInput.value.trim();
        var confirmPasswordInput = document.getElementById('confirm_password');
        var confirmPasswordValue = confirmPasswordInput.value.trim();

        if (!isValidEmail(emailValue)) {
            event.preventDefault(); // Prevent form submission if email is invalid
            alert("Please enter a valid email address.");
            return;
        }

        if (passwordValue !== confirmPasswordValue) {
            event.preventDefault(); // Prevent form submission if passwords do not match
            alert("Passwords do not match.");
        }
    });

    function isValidEmail(email) {
        // Regular expression pattern for a valid email
        var pattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        return pattern.test(email);
    }
});