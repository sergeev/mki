class ArticlesController < ApplicationController
	def index
		@articles = Article.all
	end

	before_action :set_article, only: [:edit, :update, :show, :destroy]

	def new
		# Создаем статью
		@article = Article.new
	end

	def create
		#render plain: params[:article].inspect
		@article = Article.new(article_params)
		if @article.save
			flash[:notice] = "Статья успешно создана"
			redirect_to articles_show(@article)
		else
			render 'new'
		end
	end

	def show
		@article = Article.find(params[:id])
	end

	def edit
		@article = Article.find(params[:id])
	end

	def update
		@article = Article.find(params[:id])
		if @article.update(article_params)
			flash[:notice] = "Статья успешно обновлена"
			redirect_to article_path(@article)
		else
			flash[:notice] = "Статья не обновлена!"
			render 'edit'
		end
	end

	def destroy
		@article = Article.find(params[:id])
		@article.destroy
		flash[:notice] = "Статья успешно удалена"
		redirect_to articles_path
	end

	def set_article
		@article = Article.find(params[:id])
	end

	private
	def article_params
		params.require(:article).permit(:title, :description)
	end
end
