class Order < ApplicationRecord

  belongs_to :restaurant
  has_many :order_products

  validates :name, :phone_number, :total_value, :city, :neighborhood, :street, :number, presence: true
  before_validation :set_price

  accepts_nested_attributes_for :order_products, allow_destroy: true

  protected

  def set_price
    final_price = 0
    order_products.each do |op|
      final_price += op.quantity * op.product.price
    end

    self.total_value = final_price + self.restaurant.delivery_tax
  end

end
