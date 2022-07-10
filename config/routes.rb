Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, param: :_cedula
      resources :order_items
      resources :orders
      resources :products_categories
      resources :categories
      resources :products
      
      get '/size', to: 'sizes#index'
      post 'orders/neworder', to: 'orders#neworder'
      patch 'orders/shipping/:id', to: 'orders#shipping'
      patch 'users/order_completed/:id', to: 'users#order_completed'
    end
  end
end
