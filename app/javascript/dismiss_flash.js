document.addEventListener("DOMContentLoaded", function() {
  const flashMessages = document.querySelectorAll('.alert');
  flashMessages.forEach(function(flash) {
    setTimeout(function() {
      flash.classList.add('fade'); // Fades out the message
      flash.style.display = 'none'; // Hides the flash after a delay
    }, 1000); // Time in milliseconds (3000ms = 3 seconds)
  });
});
