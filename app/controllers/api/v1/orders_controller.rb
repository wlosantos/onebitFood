class Api::V1::OrdersController < ApplicationController

  def show
    order = Order.find(params[:id])
  end

  def create
    order = Order.new(order_params)
  end


  private

  def order_params
    params.require(:order).permit(:name, :phone_number,
                                  :total_value, :city, :neighborhood,
                                  :number, :complement, :status)
  end
end
