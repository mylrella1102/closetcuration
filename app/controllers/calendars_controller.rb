class CalendarsController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def index
    @posts = Post.all
  end

  def show
    @account = Account.find(params[:id])
    @items = @account.items.order('created_at DESC')
    @posts = @account.posts.order('created_at DESC')
  end
end
