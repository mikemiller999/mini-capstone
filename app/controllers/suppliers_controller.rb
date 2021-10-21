class SuppliersController < ApplicationController
  def create
    s = Supplier.create(name: params["name"].to_s, email: params["email"].to_s, phone_number: params["phone_number"])

    if s.save
      s.save
    else
      render json: {message: "validation failed"}
    end

  end

  def delete
    s = Supplier.find_by(id: params['id'])
    s.delete
  end

  def update
    
  end

  def read
    if params["id"].class == 1.class
      render json: Product.find_by(id: params["id"])
    else
      render json: Product.all
    end
  end
end
