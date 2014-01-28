Hack2::Application.routes.draw do

  # devise_for :users

  devise_for :users, :controllers => { :invitations => "users/invitations" }


  devise_scope :user do
      get "/admin" => "devise/sessions#new"
    end

  resources :charities do
    resources :products
  end

  resources :users do
    resources :charities do
      resources :products 
    end
  end

  resources :payments

  root "home#index"
  get "/products" => "products#index"
  get "/products/id" => "products#show_product"

  post "/users/:user_id/charities/new" => "charities#new"
  post "/users/:user_id/charities/:charity_id/products/new" => "products#new"

  resources :products

  # resources :charities do 
  #   resources :products 
  # end

  get 'confirm_payment' => 'payments#confirm'



end

