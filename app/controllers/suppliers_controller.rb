class SuppliersController < ApplicationController
  def create
    if current_user
      s = Supplier.create(name: params["name"].to_s, email: params["email"].to_s, phone_number: params["phone_number"])
      if s.save
        s.save
      else
        render json: {message: "validation failed"}
      end
    else
      render json: {message: "not logged in"}
    end
  end

  def delete
    if current_user
      s = Supplier.find_by(id: params['id'])
      s.delete
    else
      render json: {message: "not logged in"}
    end
  end

  def update
    
  end

  def read
    if current_user
      if params["id"].class == 1.class
        render json: Product.find_by(id: params ["id"])
      else
        render json: Product.all
      end
    else
      render json: {message: "not logged in"}
    end
  end
end
