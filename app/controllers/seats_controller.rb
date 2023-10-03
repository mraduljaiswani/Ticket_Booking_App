class SeatsController < ApplicationController
    # skip_before_action :create, raise: false
    
    def create
        @seat = Seat.new(seat_params)
        if @seat.save
        else
          render :new
        end
      end
    
      def new
        @seat = Seat.new
      end
      private
    
      def seat_params
        params.require(:seat).permit(:seat_number, :venue_id)
      end
end