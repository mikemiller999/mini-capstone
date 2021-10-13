Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/product", controller: "products", action: "product_method"
  get "/products", controller: "products", action: 'products_method'
end
