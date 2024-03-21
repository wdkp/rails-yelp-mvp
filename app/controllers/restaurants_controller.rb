class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurants = Restaurant.new
  end

  def create
    @restaurants = Restaurants.new(restaurant_params)
    restaurants.save

    redirect_to restaurant_path(@restaurant)
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :category)
  end
end
