class UsersController < ApplicationController
	# before_action :logged_in_user, only: [:index, :edit, :update, :destroy,
	# 	:following, :followers]
	# 	before_action :correct_user,   only: [:edit, :update]
	# 	before_action :admin_user,     only: :destroy
		def index
			@users = User.paginate(page: params[:page], per_page: 5)
		end
		def new
			@user = User.new
		end

		def show
			@user = User.find(params[:id])
			@user_articles = @user.articles.paginate(page: params[:page], per_page: 5)
		end

		def create
			@user = User.new(user_params)
			if @user.save
				flash[:success] = "Добро пожаловать в  #{@user.username}"
				redirect_to articles_path
			else
				render 'new'
			end
		end

		def edit
			@user = User.find(params[:id])
		end

		def update
			@user = User.find(params[:id])
			if @user.update(user_params)
				flash[:success] = "Ваша учетная запись успешно обновлена"
				redirect_to articles_path
			else
				render 'edit'
			end
		end

		private
		def user_params
			params.require(:user).permit(:username, :email, :password)
		end
	end
