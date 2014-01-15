Hack2::Application.routes.draw do
  resources :payments

  root "products#index"
  get "/products" => "products#index"
  get "/products/id" => "products#show_product"

  resources :payments
    match 'confirm_payment' => 'payments#confirm'
end
