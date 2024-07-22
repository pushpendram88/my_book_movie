class ReviewsController < ApplicationController
  before_action :authenticate_user!

  def create
    @review = Review.new(review_params)
    respond_to do |format|
      if @review.save
        format.html { redirect_to @review.movie, notice: 'Review was successfully created.' }
        format.json { render json: @review, status: :created, location: @review }
      else
        format.html { redirect_to @review.movie, notice: 'Review has errors.' }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  def review_params
    params.require(:review).permit(:content, :movie_id).merge({user_id: current_user.id})
  end
end
