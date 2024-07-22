class BookingsController < ApplicationController

  def create
    success = ActiveRecord::Base.transaction do
      @booking = Booking.new(movie_hall_show_id: params[:movie_hall_show_id], seat: params[:seat])
      @booking.save
    end

    respond_to do |format|
      if success
        format.html { redirect_to @booking.movie_hall_show.movie, notice: 'Booking was successfully created.' }
        format.json { render json: @booking, status: :created, location: @booking }
      else
        format.html { redirect_to @booking.movie_hall_show, notice: 'Booking was unsuccessfully.' }
        format.json { render json: @booking.errors, status: :unprocessable_entity }
      end
    end
  end
end
