Rails.application.routes.draw do
  root 'home#index'

  scope '/admin' do
    resources :events
  end
end
