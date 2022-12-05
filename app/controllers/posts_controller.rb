class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update]

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
     
      redirect_to posts_path, notice: "ブログを作成しました！"
    else
     
      render :new
    end
  end

  
  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to posts_path, notice: "ブログを編集しました！"
    else
      render :edit
    end

    def destroy
    end
  end

 private

 def post_params
  params.require(:post).permit(:title, :content)
 end

 def set_post
  @post = Post.find(params[:id])
end
  
end
