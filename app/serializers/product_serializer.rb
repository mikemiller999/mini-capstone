class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :image_url, :price, :is_discounted?, :tax, :total
end
