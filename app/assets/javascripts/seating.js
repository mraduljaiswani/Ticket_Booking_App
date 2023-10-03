document.addEventListener('DOMContentLoaded', function () {
  const seats = document.querySelectorAll('.seat');
  const bookButton = document.getElementById('book-button');

  seats.forEach((seat) => {

    seat.addEventListener('click', () => {
      if (!seat.classList.contains('booked')) {
        seat.classList.toggle('selected');
      }
    });
  });
});


const bookButton = document.getElementById('book-button');
bookButton.addEventListener('click', () => {
  const selectedSeats = document.querySelectorAll('.seat.selected');
  const selectedSeatNumbers = Array.from(selectedSeats).map(
    (seat) => seat.getAttribute('data-seat-number')
  );

  
  $.ajax({
    url: '/bookings/create',
    method: 'POST',
    data: { seat_numbers: selectedSeatNumbers },
    success: function (response) {
      // Handle the booking success or error
      console.log(response);
    },
    error: function (error) {
      // Handle booking error
      console.error(error);
    },
  });
});




