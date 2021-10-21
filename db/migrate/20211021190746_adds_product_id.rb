class AddsProductId < ActiveRecord::Migration[6.1]
  def change
    add_column :image_tables, :product_id, :integer 
  end
end
