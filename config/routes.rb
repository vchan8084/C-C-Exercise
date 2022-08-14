Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'billing_addresses/index'
      post 'billing_addresses/create'
      delete 'billing_addresses/:id', to: 'billing_addresses#destroy'
    end
  end

  root 'billing_addresses#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
