class Api::V1::RestaurantSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers

  attributes :id, :name, :description, :delivery_tax, :city, :street,
             :neighborhood, :number, :complement, :image_url

  has_many :product_categories

   def image_url
     url_for(object.image) if object.image.attached?
   end

end
