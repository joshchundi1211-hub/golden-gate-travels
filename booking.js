document.addEventListener("DOMContentLoaded", () => {

  const bookingForm = document.getElementById("bookingForm");

  if (!bookingForm) return;

  bookingForm.addEventListener("submit", () => {

    const message = document.getElementById("bookingMessage");

    if (message) {
      message.textContent = "Submitting your booking enquiry...";
    }

  });

});