class Admin::PostsController < ApplicationController
  before_filter :authenticate_user!

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(params[:post])
    if @post.save
      redirect_to [:admin, @post], :notice => "Successfully created post."
    else
      render :action => 'new'
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update_attributes(params[:post])
      redirect_to [:admin, @post], :notice  => "Successfully updated post."
    else
      render :action => 'edit'
    end
  end

 def destroy
@post = Post.find(params[:id])
@post.destroy
redirect_to admin_posts_url, :notice => "Successfully destroyed post."
end

private
def authorize_user!
redirect_to root_path, :notice => 'Access denied!' unless current_user.admin?
end

end
