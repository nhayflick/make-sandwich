MakeSandwich::Application.routes.draw do
  root to: "orders#new"

  resources :orders, only: [:new, :create, :show] do
    resources :order_condiments, only: [:create]
  end
end
