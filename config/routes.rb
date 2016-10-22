Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :user, only: [:create, :update, :destroy]
      resources :listing, only: [:create, :update, :destroy, :index]
      resources :category, only: [:create, :update, :destroy]
    end
  end
end
