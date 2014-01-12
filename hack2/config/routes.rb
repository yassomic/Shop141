Hack2::Application.routes.draw do
  root "products#index"
  get "/products" => "products#index"
  get "/products/id" => "products#show_product"
end
