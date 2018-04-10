Rails.application.routes.draw do
  namespace :api, defaults: {format: :json} do
    resource :users, only: [:create]
    resource :session, only: [:create, :destroy, :show]
    resources :restaurants, only: [:create, :index, :show] do
      resources :reservations, only: [:index, :create, :update, :destroy]
      resources :reviews, only: [:index, :create, :update, :destroy]
    end
    post 'restaurants/search', to: 'restaurants#query'
    get 'restaurants/search', to: 'restaurants#query'
  end

  root "static_pages#root"
end
