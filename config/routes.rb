Rails.application.routes.draw do

  get 'kvantums/index'

	root 'pages#index'
	get 'about', to: 'pages#about'

	get 'signup', to: 'users#new'
	get 'login', to: 'sessions#new'

	post 'login', to: 'sessions#create'
	delete 'logout', to: 'sessions#destroy'

  resources :enrollments, only: [:new, :create, :destroy]
  resources :students
	resources :articles
	resources :users, except: [:new]

end
