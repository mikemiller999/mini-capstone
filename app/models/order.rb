class Order < ApplicationRecord
  belongs_to :product
  belongs_to :user
  validates :total, presence: true, numericality: { greater_than: 0 }
  
end
