Hack2::Application.routes.draw do
  root "products#index"
  resources :products 
end
