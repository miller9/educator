class CommentsController < ApplicationController
  before_action :authenticate_educator!, only: [:new, :create]

  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.create(comment_params.merge(educator_id: current_educator.id))
    redirect_to article_path(@article)
  end

  private
  def comment_params
    params.require(:comment).permit(:body)
  end

end
