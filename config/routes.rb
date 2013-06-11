MakeSandwich::Application.routes.draw do
  devise_for :users

  root to: "orders#new"

  resources :orders, only: [:new, :create, :show] do
    resources :order_condiments, only: [:create]
  end
end
