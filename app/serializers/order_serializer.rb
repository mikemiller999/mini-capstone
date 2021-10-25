class OrderSerializer < ActiveModel::Serializer
  attributes :id, :product_id, :product, :user_id, :user, :quantity, :tax, :subtotal, :total
end
