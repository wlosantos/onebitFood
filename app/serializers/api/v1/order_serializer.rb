class Api::V1::OrderSerializer < ActiveModel::Serializer
  attributes :id, :restaurant_name, :total_value, :status,
             :city, :street, :neighborhood, :number, :complement

  def restaurant_name
    object.restaurant.name || ''
  end

end
