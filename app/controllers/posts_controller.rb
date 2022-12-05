class PostsController < ApplicationController
  def index
  end

  def new
    @post = Post.new
  end

  def create
    Post.create(title: params[:post][:title], content: params[:post][:content])
    redirect_to new_post_path
  end
end
