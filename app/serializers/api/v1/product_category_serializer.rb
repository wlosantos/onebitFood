class Api::V1::ProductCategorySerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  attributes :id, :title, :list_products

  def list_products
    object.products.map do |product|
      {
        id: product.id,
        name: product.name,
        description: product.description,
        price: product.price,
        image_url: polymorphic_url(product.image)
      }
    end
  end

end
