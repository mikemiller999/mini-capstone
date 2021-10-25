class OrdersController < ApplicationController
  def create
    if current_user
      o = Order.new(
        user_id: current_user.id, 
        product_id: params[:product_id], quantity: params[:quantity], subtotal: Product.find_by(id: params[:id]).price * params[:quantity], 
        tax: Product.find_by(id: params[:id]).tax * params[:quantity],
         total: Product.find_by(id: params[:id]).total * params[:quantity]
        )
      if o.save
        render json: o
      else
        render json: {message: "validation failure: check inputs"}
      end
    else
      render json: {message: "not logged in"}, status: 401
    end   
  end

  def read
    if current_user
      if params[:id] == "all"
        render json: current_user.orders
      else
        if Order.find_by(id: params[:id]).user_id == current_user.id
          render json: Order.find_by(id: params[:id])
        else
          render json: {message: "You did not make this order"}
        end
      end
    else
      render json: {message: "not logged in"}, status: 401
    end  
  end

end
