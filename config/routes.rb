Rails.application.routes.draw do
  root "lessons#index"

  devise_for :users, :controllers => { registrations: 'users/registrations' }

  resources :lessons, :assignments
end
