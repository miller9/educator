class ArticlesController < ApplicationController
  before_action :find_article, except: [:new, :create, :index, :from_author]
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
    @article.update(article_params)
    @article.save_types # function call to save new 'type_elements'
    redirect_to @article
  end

  def new
    @article = Article.new
  end

  def create
    @article = current_educator.articles.create(article_params)
    @article.save_types # function call to save new 'type_elements'
    redirect_to @article
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to root_path
  end

  def from_author
    @educator = Educator.find(params[:educator_id])
  end

  def find_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :content, :type_elements)
  end

end
