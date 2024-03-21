class ReviewsController < ApplicationController
  def new
    # We need @restaurant in our `simple_form_for`
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(review_params)
    @review.save

    redirect_to resturant_path(@resturants)
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
