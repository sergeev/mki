Rails.application.routes.draw do

	root 'pages#index'
	get 'kvantums/index'
	get 'about', to: 'pages#about'

	resources :enrollments, only: [:new, :create, :destroy]
	resources :students
	resources :articles

end
