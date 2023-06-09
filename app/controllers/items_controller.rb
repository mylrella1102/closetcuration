class ItemsController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  def index
    @items = Item.all
    @posts = Post.all.order('created_at DESC')
  end

  def new
    @item = Item.new
  end
  
  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to items_path
    else
      render :new
    end
  end

  def show
    @item = Item.find(params[:id])
  end

  def edit
    @item = Item.find(params[:id])
    if current_user.id != @item.user_id
      redirect_to items_path
    end
  end
  
  def destroy
    @item = Item.find(params[:id])
    if current_user.id == @item.user_id
      ItemPost.where(item_id: @item.id).destroy_all
      @item.destroy
    end
    redirect_to items_path
  end
  private

  def item_params
    params.require(:item).permit(:image, :name, :category_id, :color_id, :season_id, :info).merge(user_id: current_user.id)
  end
  
end
