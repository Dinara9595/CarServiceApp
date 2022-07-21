Rails.application.routes.draw do
  resources :categories do
    resources :services, shallow: true
  end

  resources :orders
  resources :executors

  root 'orders#index'
end
