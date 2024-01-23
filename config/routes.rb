Rails.application.routes.draw do
  devise_for :users
    root "order#index"
    resources :order
    get "/dashboard", to: "dashboard#index"
end
