class MoviesController < ApplicationController
  before_action :authenticate_user!

  def index
    @movies = Movie.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @movies }
    end
  end

  def show
    @movie = Movie.find(params[:id])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @movie }
    end
  end
end
