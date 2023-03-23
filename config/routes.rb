Rails.application.routes.draw do
  # [...]
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :listings, only: [:index, :show, :update, :create, :destroy]
      resources :missions, only: [:index, :create]
    end
  end
end
