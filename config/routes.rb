Rails.application.routes.draw do
  devise_for :users
  #ログアウトのdeleteをgetに変更
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root to: "home#index"
  resources :users
  resources :recipes
end
