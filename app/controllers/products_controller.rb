class ProductsController < ApplicationController
  def products_method
    render json: Product.all
  end

end
