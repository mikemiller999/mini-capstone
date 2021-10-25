class ProductsController < ApplicationController
  before_action :authenticate_admin, except: [:product_method, :products_method]
  def products_method
    render json: Product.all
  end

  def product_method
    if current_user
      render json: Product.find_by(id: params['id'].to_i)
    else
      render json: {message: "not logged in"}
    end
  end

  def create_method
    if current_user
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
    else
      render json: {message: "not logged in"}
    end

  end

  def patch_method
    if current_user
      patch = Product.find_by(id: params["id"])
      patch.name = "#{params["name"]}"
      patch.price = params["price"]
      patch.description = "#{params["description"]}"
      patch.save
      render json: patch
    else
      render json: {message: "not logged in"}
    end
  end
  
  def delete_method
    if current_user
      product = Product.find_by(id: params["id"].to_i)
      product.destroy
      render json: {message: "done"}
    else
      render json: {message: "not logged in"}
    end
  end
end
