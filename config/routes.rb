Rails.application.routes.draw do
  root to: "products#new"
  resources :products, only: %i[index new create show]
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
