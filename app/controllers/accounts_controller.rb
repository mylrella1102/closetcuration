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
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @account = Account.find(params[:id])
    if current_user.id != @account.user_id
      redirect_to root_path
    end
  end

  def update
    @acocunt = Account.find(params[:id])
    if @account.update(account_params)
      redirect_to post_path
    else
      render :edit
    end
  end


  private

  def account_params
    params.require(:account).permit(:name, :date).merge(user_id: current_user.id)
  end

end
