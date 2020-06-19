class ArticlesController < ApplicationController
  before_action :find_article, except: [:new, :create, :index]
  before_action :authenticate_educator!, only: [:new, :create, :edit, :update, :destroy]

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    @article.update(title: params[:article][:title], content: params[:article][:content])
    redirect_to @article
  end

  def new
    @article = Article.new
  end

  def create
    #@article = Article.create(title: params[:article][:title], content: params[:article][:content])
    @article = current_educator.articles.create(title: params[:article][:title],
                          content: params[:article][:content]) # common way through association)
    render json: @article
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to root_path
  end

end
