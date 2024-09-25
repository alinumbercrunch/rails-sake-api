class Api::V1::RestaurantsController < ApplicationController

 def index
    if params[:title].present?
      @restaurants = Restaurant.where('title ILIKE ?', "%#{params[:title]}%")
    else
      @restaurants = Restaurant.all
    end
    # Putting the most recently created cafes first
    render json: @restaurants.order(created_at: :desc)
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      render json: @restaurant, status: :created
    else
      render json: { error: @restaurant.errors.messages }, status: :unprocessable_entity
    end
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:title, :address, :picture, hours: {}, criteria: [])
  end

end
