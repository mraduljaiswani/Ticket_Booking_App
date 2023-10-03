class BookingsController < ApplicationController
  def new
      @booking = Booking.new
  end

  def create
    seat_numbers =  params[:booking][:selected_seats].split(',')
    seat_numbers.each do |number|
          seat =  Seat.find_by_seat_number(number)
          @booking = Booking.new
          @booking.show_id = booking_params[:show_id]
          @booking.seat = seat
          
          seat.update(status: 'booked')
        
          if @booking.save!
          flash[:success] = "Seats booked successfully!"
        else
          flash[:error] = "Error booking seats. Please try again."
          end
        end
  end
  
def booking_params
  params.require(:booking).permit(:show_id , :selected_seats)
end
end
