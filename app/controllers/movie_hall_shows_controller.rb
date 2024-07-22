class MovieHallShowsController < ApplicationController
  before_action :authenticate_user!

  def show
    @movie_hall_show = MovieHallShow.find(params[:id])
    @hall = @movie_hall_show.hall
    @available_seats = @movie_hall_show.available_seats
    respond_to do |format|
      format.html # index.html.erb
      format.js
      format.json { render json: @movie_hall_show }
    end
  end
end
