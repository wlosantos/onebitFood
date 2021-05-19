class Api::V1::CategorySerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  attributes :id, :title, :image_url

  def image_url
    url_for(object.image) if object.image.attached?
  end
end
