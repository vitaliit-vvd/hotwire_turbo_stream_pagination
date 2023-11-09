Rails.application.routes.draw do
  resources :artists
  resources :posts
  resources :comments do
    collection do
      post :index
    end
  end

  root "posts#index"
end
