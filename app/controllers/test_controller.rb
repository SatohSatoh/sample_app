class TestController < ApplicationController

  PER = 10

  def top
  end

  def new
    @post = Post.new
  end

  def index
    @posts = Post.page(params[:page]).per(PER)
  end

  def create
    @post = Post.new(content:params[:content])
    if @post.save
      flash[:notice]="コメントを投稿しました"
      redirect_to('/test/index')
    else
      render('/test/new')
    end
  end

  def edit
    @post = Post.find_by(id:params[:id])
  end

  def update
    @post = Post.find_by(id:params[:id])
    @post.content = params[:content]
    if @post.save
      flash[:notice]="コメントを更新しました"
      redirect_to('/test/index')
    else
      render("/test/edit")
    end
  end

  def destroy
    @post = Post.find_by(id:params[:id])
    @post.destroy
    flash[:notice]="コメントを削除しました"
    redirect_to('/test/index')
  end
  
end
