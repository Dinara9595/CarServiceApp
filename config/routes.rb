Rails.application.routes.draw do
  resources :categories do
    resources :services
  end

  resources :orders
  resources :executors

  root to: 'services#index'
end
