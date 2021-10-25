class Product < ApplicationRecord
  belongs_to :supplier
  has_many :product
  has_many :images
  validates :name, presence: true, uniqueness: true
  validates :price, presence: true, numericality: { greater_than: 0 }
  def is_discounted?
    if price < 10.0
      return true
    else 
      return false
    end
  end
  def tax
    tax = price * 0.09
    return tax
  end
  def total
    total = tax + price
    return total
  end
  #def supplier
  #  Supplier.find_by(id: supplier_id)
  #end
  #def images 
  #  Image.where(product_id: id)
  #end
  
end
