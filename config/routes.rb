Rails.application.routes.draw do
  root "orders#index"

  resources :orders do
    resources :members
  end
  get "/dashboard", to: "dashboard#index"

  devise_for :users
end
