class Api::V1::OrdersController < ApplicationController

  def show
    order = Order.find(params[:id])
    render json: order, status: :ok
  rescue
    render json: { message: 'Nº de ordem não encontrada!!!' }, status: :unprocessable_entity
  end

  def create
    order = Order.new(order_params)
    if order.save
      render json: order, status: :created
    else
      render json: { errors: order.errors.full_messages }, status: :unprocessable_entity
    end
  end


  private

  def order_params
    params.require(:order).permit(:name, :phone_number, :restaurant_id,
                                  :total_value, :city, :neighborhood, :street,
                                  :number, :complement, :status,
                                  order_products_attributes: [:quantity, :product_id])
  end
end
