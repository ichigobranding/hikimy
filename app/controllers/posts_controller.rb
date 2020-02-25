class PostsController < ApplicationController

  def edit
    @post = Post.find_by(id: params[:id])
  end

  def update
    # id を取得
    @post = Post.find_by(id: params[:id])
    # content上書き
    @post.content = params[:content]
    @post.save
    redirect_to("/posts/#{@post.id}")
  end

  def index
    @posts = Post.all.order(created_at: :desc)
  end

  def show
    @post = Post.find_by(id: params[:id])
  end

  def new
  end

  def create
    @post = Post.new(content: params[:content])
    @post.save
    redirect_to("/posts")
  end

  def destroy
    @post = Post.find_by(id: params[:id])
    @post.destroy
    redirect_to("/posts")
  end

end
