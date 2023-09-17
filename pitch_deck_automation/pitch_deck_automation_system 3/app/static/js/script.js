const button = document.querySelector('#submit-button');
button.addEventListener('click', () => {
  const email = document.querySelector('#email-input').value;
  const pitchDeckId = document.querySelector('#pitch-deck-id-input').value;
  
  // Send request to server to generate and deliver pitch deck
  fetch('/generate-pitch-deck', {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json'
    },
    body: JSON.stringify({ email, pitchDeckId })
  })
  .then(response => response.json())
  .then(data => {
    // Display success message
    const successMessage = document.querySelector('#success-message');
    successMessage.textContent = data.message;
    successMessage.style.display = 'block';
  })
  .catch(error => {
    // Display error message
    const errorMessage = document.querySelector('#error-message');
    errorMessage.textContent = 'An error occurred. Please try again later.';
    errorMessage.style.display = 'block';
  });
});