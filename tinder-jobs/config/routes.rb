Rails.application.routes.draw do
  get 'openings/show'

  get 'openings/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'welcome#index'

  resources :users, only: [:edit, :update, :destroy]

  resources :companies, :openings, :applications

  #put '/application', to: 'applications#update'

  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  patch '/profile', to: 'users#edit'

  get '/profile', to: 'users#show'
  post '/profile', to: 'users#edit'

  get '/logout', to: 'sessions#destroy'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'

  get '/profile/resume/new', to: 'resumes#new', as: 'resume_new'
  post "/profile/resume/new", to: 'resumes#create'

  get '/profile/resume/edit', to: 'resumes#edit', as: 'resume_edit'
  post "/profile/resume/edit", to: 'resumes#update', as: 'resume_update'

  get '/profile/resume', to: 'resumes#show', as: 'resume_show'

  get '/matches', to: 'users#matches'

end
