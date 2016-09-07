Rails.application.routes.draw do
  root 'home#index'

  get '/admin' => 'admin_home#index'
  scope '/admin' do
    resources :events
    resources :posts
    resources :users
  end

  post '/logout' => 'auth#logout'
  get '/login' => 'auth#login'
  get '/auth/google_oauth2/callback' => 'auth#oauth2_callback'
  get '/.well-known/acme-challenge/:id' => 'pages#letsencrypt'
end
