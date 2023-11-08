Rails.application.routes.draw do
  resources :posts
  resources :comments do
    collection do
      post :index
    end
  end

  root "comments#index"
end
