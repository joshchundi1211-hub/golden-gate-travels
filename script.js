/* =========================
   MOBILE MENU
========================= */
const menuToggle = document.getElementById("menuToggle");
const siteNav = document.getElementById("siteNav");

menuToggle.addEventListener("click", () => {
  const isOpen = siteNav.classList.toggle("active");
  menuToggle.setAttribute("aria-expanded", isOpen);
});

/* Close mobile nav after clicking a link */
document.querySelectorAll(".site-nav a").forEach((link) => {
  link.addEventListener("click", () => {
    siteNav.classList.remove("active");
    menuToggle.setAttribute("aria-expanded", "false");
  });
});

/* =========================
   BOOKING BUTTONS
   Scroll to booking form and auto-select destination/package
========================= */
const bookingButtons = document.querySelectorAll(".booking-trigger");
const bookingSection = document.getElementById("booking");
const destinationSelect = document.getElementById("destination");

bookingButtons.forEach((button) => {
  button.addEventListener("click", () => {
    const destination = button.getAttribute("data-destination");

    if (destination && destinationSelect) {
      destinationSelect.value = destination;
    }

    bookingSection.scrollIntoView({
      behavior: "smooth",
      block: "start"
    });
  });
});

/* =========================
   SET MINIMUM DATE TO TODAY
========================= */
const travelDateInput = document.getElementById("travelDate");
const today = new Date().toISOString().split("T")[0];
travelDateInput.setAttribute("min", today);

const bookingForm = document.getElementById("bookingForm");

/* =========================
   REVIEW FORM
   Adds new reviews to the testimonial section
========================= */
const reviewForm = document.getElementById("reviewForm");
const reviewList = document.getElementById("reviewList");
const reviewMessage = document.getElementById("reviewMessage");

reviewForm.addEventListener("submit", (event) => {
  event.preventDefault();

  const reviewName = document.getElementById("reviewName").value.trim();
  const reviewLocation = document.getElementById("reviewLocation").value.trim();
  const reviewText = document.getElementById("reviewText").value.trim();

  if (!reviewName || !reviewLocation || !reviewText) {
    reviewMessage.textContent = "Please complete all review fields.";
    reviewMessage.style.color = "crimson";
    return;
  }

  const newReview = document.createElement("article");
  newReview.classList.add("testimonial-card");

  newReview.innerHTML = `
    <div class="stars">★★★★★</div>
    <p>“${reviewText}”</p>
    <h3>${reviewName}</h3>
    <span>${reviewLocation}</span>
  `;

  reviewList.appendChild(newReview);

  reviewMessage.textContent = "Thank you. Your review has been added.";
  reviewMessage.style.color = "lightgreen";

  reviewForm.reset();
});

/* =========================
   OPTIONAL: CLOSE MOBILE MENU IF USER CLICKS OUTSIDE
========================= */
document.addEventListener("click", (event) => {
  const clickedInsideNav = siteNav.contains(event.target);
  const clickedToggle = menuToggle.contains(event.target);

  if (!clickedInsideNav && !clickedToggle && siteNav.classList.contains("active")) {
    siteNav.classList.remove("active");
    menuToggle.setAttribute("aria-expanded", "false");
  }
});
