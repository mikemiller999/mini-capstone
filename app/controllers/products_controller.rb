class ProductsController < ApplicationController
  def products_method
    render json: Product.all
  end
  def product_method
    render json: Product.find_by(id: params['id'].to_i)
  end
  def create_method
    p = Product.create(
      name: "#{params["name"]}",
      price: params["price"],
      description: params["description"]
    )
    if p.save
      render json: p
    else
      render json: {message: "Needs valid price, and name"}
    end

  end

  def patch_method
    patch = Product.find_by(id: params["id"])
    patch.name = "#{params["name"]}"
    patch.price = params["price"]
    patch.description = "#{params["description"]}"
    patch.save
    render json: patch
  end
  
  def delete_method
    product = Product.find_by(id: params["id"].to_i)
    product.destroy
    render json: {message: "done"}
  end
end
