class CommentsController < ApplicationController
 before_filter :authenticate_user!
 def create
 @comment = current_user.comments.build(params[:comment])
 @comment.post = Post.find(params[:post_id])
 if @comment.save
 redirect_to :back
 end
 end
 end

