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
  
  private

  def item_params
    params.require(:item).permit(:image, :name, :category_id, :color_id, :season_id, :info).merge(user_id: current_user.id)
  end
  
end
