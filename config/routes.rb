Rails.application.routes.draw do
  resources :property_comments
  resources :property_characteristics
  resources :properties
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
