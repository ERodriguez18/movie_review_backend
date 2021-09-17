Rails.application.routes.draw do

  devise_for :users, :users,
  path: '',
  path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    registration: 'signup'
  },
  controllers: {
    sessions: 'sessions',
    registrations: 'registrations'
  }
end

  resources :reviews

  resources :movies
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
