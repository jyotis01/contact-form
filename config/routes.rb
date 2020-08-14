Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  scope "(:locale)", locale: /en|hi/ do
    root to: "enquiries#index"
    resources :enquiries , only: [:index, :create]
  end
end