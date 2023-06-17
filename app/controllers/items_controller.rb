class ItemsController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  def index
    @items = Item.all.order('created_at DESC')
    @posts = Post.all.order('created_at DESC')
    @accounts = Account.all
    if params[:category_id].present?
      @items = Item.where(category_id: params[:category_id]).order('created_at DESC')
    end
    if params[:color_id].present?
      @items = Item.where(color_id: params[:color_id]).order('created_at DESC')
    end
    if params[:season_id].present?
      @items = Item.where(season_id: params[:season_id]).order('created_at DESC')
    end

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

  def update
    @item = Item.find(params[:id])
    if @item.update(item_params)
      redirect_to item_path
    else
      render :edit
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
    params.require(:item).permit(:image, :name, :category_id, :color_id, :season_id, :info, :account_id).merge(user_id: current_user.id)
  end
  
end
