class Api::V1::RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
    filter_by_query if params[:q]
    filter_by_city if params[:city]
    filter_by_category if params[:category]

    render json: @restaurants, status: :ok
  end

  def show
    restaurant = Restaurant.find(params[:id])
    render json: restaurant, status: :ok
  end

  private

  def filter_by_query
    @restaurants = @restaurants.ransack(name_or_description_cont: params[:q]).result
  end

  def filter_by_city
    @restaurants = @restaurants.ransack(city_cont: params[:city]).result
  end

  def filter_by_category
    @restaurants = @restaurants.select do |restaurant|
      restaurant.category.title == params[:category]
    end
  end

end
