// List of valid user IDs
const validUserIds = ["11111", "22222", "33333", "44444", "55555"];

document.getElementById("userForm").addEventListener("submit", function(event) {
    event.preventDefault(); // Prevent form submission

    let userId = document.getElementById("userId").value.trim();
    let message = document.getElementById("message");

    if (validUserIds.includes(userId)) {
        message.textContent = "User ID is valid!";
        message.style.color = "green";
    } else {
        message.textContent = "Invalid User ID!";
        message.style.color = "red";
    }
});
