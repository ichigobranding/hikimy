class PostsController < ApplicationController

  def index
    @posts = Post.all.order(created_at: :desc)
  end

  def edit
    @post = Post.find_by(id: params[:id])
  end

  def update
    @post = Post.find_by(id: params[:id])
    @post.content = params[:content]
    if @post.save
      flash[:notice] = "変更されました。回答者にわかりやすい質問にするとよりよい回答がえ得られます！"
      render("/posts/edit")
    else
      render("/posts/edit")
    end
  end

  def show
    @post = Post.find_by(id: params[:id])
  end

  def new
  end

  def create
    @post = Post.new(content: params[:content])
    if @post.save
    flash[:notice] = "質問が投稿されました。回答者にわかりやすい質問にするとよりよい回答がえ得られます！"
    redirect_to("/posts")
    else
    render("posts/new")
    end
  end

  def destroy
    @post = Post.find_by(id: params[:id])
    @post.destroy
    flash[:notice] = "質問が削除されました。"
    redirect_to("/posts")
  end

end
