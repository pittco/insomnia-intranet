Rails.application.routes.draw do
  root 'home#index'

  get '/admin' => 'admin_home#index'
  scope '/admin' do
    resources :events
    resources :posts
  end

  get '/auth/google_oauth2/callback' => 'admin_home#login'
end
