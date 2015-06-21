Rails.application.routes.draw do
  root 'home#index'

  scope '/admin' do
    resources :events
    resources :posts
  end
end
