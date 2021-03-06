Rails.application.routes.draw do
  root to: 'homes#top'
  get '/home/about' => 'homes#about'
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    resources :books, only: [:new, :create, :index, :show, :destroy, :edit]
    resources :users, only: [:show, :index, :edit]



end
