Rails.application.routes.draw do
  root "doctors#index"
  
  resources :doctors 
  resources :patients do
    resources :appointments, only: [:index, :new, :create, :destroy]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
