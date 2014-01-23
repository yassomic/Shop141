Hack2::Application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  resources :payments

  root "home#index"

  get "/products" => "products#index"
  get "/products/id" => "products#show_product"

  resources :products

  resources :charities do 
    resources :products 
  end
  get 'confirm_payment' => 'payments#confirm'


end

