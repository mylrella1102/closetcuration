class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def index
    @items = Item.all
    @posts = Post.all.order('date DESC')
  end

  def new
    @post = Post.new
    @step = 1
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to root_path
    else
      render :new
    end
  end

  def step2
    @step = 2
    @post = Post.new(account_id: params[:account_id]) # ステップ1で選択されたアカウントIDを使用して新しいPostオブジェクトを作成

    render partial: 'step2_form'
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
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to post_path
    else
      render :edit
    end
  end

  def destroy
    @post = Post.find(params[:id])
    if current_user.id == @post.user_id
      ItemPost.where(post_id: @post.id).destroy_all
      @post.destroy
    end
    redirect_to root_path
  end

  private

  def post_params
    params.require(:post).permit(:date, :weather_id, :low_id, :high_id, :content, item_ids: []).merge(user_id: current_user.id)
  end

end
