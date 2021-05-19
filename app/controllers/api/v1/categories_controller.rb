class Api::V1::CategoriesController < ApplicationController

  def index
    categories = Category.ording
    render json: categories, status: :ok
  end

end
