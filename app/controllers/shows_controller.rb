class ShowsController < ApplicationController
    def show
        @show = Show.find(params[:id])
        @seats = @show.venue.seats 
        @booking = Booking.new
      end

      def index
           
        @shows = Show.includes(:movie, :venue).all
    end

    def new
        @show = Show.new
      end
    
      def create
        @show = Show.new(show_params)
        if @show.save
          redirect_to shows_path, notice: 'Show was successfully created.'
        else
          render :new
        end
      end


      def search
        
        @selected_movie = Movie.find(params[:movie_id])
        @shows = Show.where(movie_id: @selected_movie.id)
        render :index
      end

      private

      def show_params
        params.require(:show).permit(:movie_id, :venue_id, :start_time)
      end
    

end
