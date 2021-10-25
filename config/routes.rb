Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/product/:id" => "products#product_method"
  get "/products", controller: "products", action: 'products_method'
  post "/create" => "products#create_method"
  patch "/patch" => "products#patch_method"
  delete "/delete/:id" => "products#delete_method"
  get "/supplier/:id" => "suppliers#read"
  post "new_supplier" => "suppliers#create"
  delete "delete_supplier/:id" => "suppliers#delete"
  patch "update_supplier" => "suppliers#update"
  post "/users" => "users#create"
  post "/sessions" => "sessions#create"
  post "/order/new" => "orders#create"
  get "/index/:id" => "orders#read"
end
