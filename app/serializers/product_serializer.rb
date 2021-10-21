class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :price, :is_discounted?, :tax, :total, :supplier_id, :supplier, :images
end
