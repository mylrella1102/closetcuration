class AccountsController < ApplicationController
  before_action :authenticate_user!

  def index
    @accounts = Account.all
  end
  
  def new
    @account = Account.new
  end
  
  def create
    @account = Account.new(account_params)
    if @account.save
      redirect_to accounts_path
    else
      render :new
    end
  end
  
  def show
    @account = Account.find(params[:id])
    @items = @account.items.order('created_at DESC')
    @posts = @account.posts.order('created_at DESC')
  end

  def edit
    @account = Account.find(params[:id])
    if current_user.id != @account.user_id
      redirect_to root_path
    end
  end

  def update
    @account = Account.find(params[:id])
    if @account.update(account_params)
      redirect_to account_path
    else
      render :edit
    end
  end

  def destroy
    @account = Account.find(params[:id])
    if current_user.id == @account.user_id
      @account.posts.destroy_all
      @account.destroy
    end
    redirect_to accounts_path
  end


  private

  def account_params
    params.require(:account).permit(:image, :name, :date).merge(user_id: current_user.id)
  end

end
