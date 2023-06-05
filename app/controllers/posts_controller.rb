class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def index
    @posts = Post.all.order('created_at DESC')
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
    if current_user.id != @post.user_id
      redirect_to root_path
    end
  end

  def update
    if @post.update(post_params)
      redirect_to post_path
    else
      render :edit
    end
  end

  def destroy
    @post = Post.find(params[:id])
    if current_user.id == @post.user_id
      @post.destroy
    end
    redirect_to root_path
  end

  private

  def post_params
    params.require(:post).permit(:date, :weather_id, :low_id, :high_id, :content).merge(user_id: current_user.id)
  end

end
