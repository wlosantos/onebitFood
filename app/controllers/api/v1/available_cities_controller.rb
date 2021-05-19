class Api::V1::AvailableCitiesController < ApplicationController

  def index
    availableCities = Restaurant.all.map { |r| r.city }.uniq
    render json: availableCities, status: :ok
  end

end
