Rails.application.routes.draw do
  root to: "enquiries#index"
  resources :enquiries , only: [:index, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
