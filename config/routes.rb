Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :articles, only: :index
      resources :search_inputs, only: %i[create update index]
    end
  end
end
