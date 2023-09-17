const createDeckForm = document.getElementById('create-deck-form');

createDeckForm.addEventListener('submit', (e) => {
  e.preventDefault();

  const title = document.getElementById('deck-title').value;
  const description = document.getElementById('deck-description').value;
  const slides = document.getElementById('deck-slides').value;

  // Send a POST request to the server to create a new deck
  fetch('/api/decks', {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json',
    },
    body: JSON.stringify({
      title,
      description,
      slides,
    }),
  })
    .then((response) => response.json())
    .then((data) => {
      // Redirect to the newly created deck page
      window.location.href = `/decks/${data.id}`;
    })
    .catch((error) => {
      console.error('Error:', error);
    });
});