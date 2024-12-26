Rails.application.routes.draw do
  root 'pages#home'
  devise_for :users, controllers: { 
    registrations: 'users/registrations',
    sessions: 'users/sessions',
    omniauth_callbacks: 'users/omniauth_callbacks' 
  }
  devise_for :installs
  resources :goals do
    resources :steps
  end
end
