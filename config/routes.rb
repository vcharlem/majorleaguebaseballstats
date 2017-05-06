Rails.application.routes.draw do
  root :to => 'players#index'

  resources :players 
  get 'upload', to: 'players#upload', as: 'upload'

end
