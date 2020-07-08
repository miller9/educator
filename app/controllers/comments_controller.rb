class CommentsController < ApplicationController

  before_action :find_commentable, only: [:create]
  before_action :set_comment, except: [:create]
  before_action :authenticate_educator!


  def create
  	@comment = @commentable.comments.build(comment_params)
  	@comment.educator = current_educator
  	@comment.save
  end




  private

  def comment_params
  	params.require(:comment).permit(:content)
  end

  def find_commentable
  	# Comment
  	if params[:comment_id]
  		@commentable = Comment.find_by_id(params[:comment_id])
  	# Article
  elsif params[:article_id]
  		@commentable = Article.find_by_id(params[:article_id])
  	end
  end

  def set_comment
  	@comment = Comment.find(params[:id])
  end

end
