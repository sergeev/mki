class SessionsController < ApplicationController
	def new
	end

	def create 
		user = User.find_by(email: params[:session][:email].downcase)
		if user  && user.authenticate(params[:session][:password])
			session[:user_id] = user.id
			flash[:success] = "Вы вошли в систему"
			redirect_to users_path(user)
		else
			flash.now[:danger] = "Что-то не так с вашей регистрационной информацией"
			render 'new'
		end
	end
	
	def destroy
		session[:user_id] = nil
		flash[:success] = "Вы вышли из системы"
		redirect_to root_path
	end
end
