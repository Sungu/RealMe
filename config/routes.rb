Rails.application.routes.draw do
  resources :posts
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  get ':controller(/:action(/:id))'
  post ':controller(/:action(/:id))'
  root :to => 'home#index'
  
end
