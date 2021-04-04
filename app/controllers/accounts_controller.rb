class AccountsController < ApplicationController
  # def index
  #   @accounts = Account.all
  # end

  def new
    @account = Account.new
  end

  # def show
  #   @account = Account.find(params[:id])
  # end

  def create
    @account = Account.new(account_params)
    if @account.save
      redirect_to accounts_path(current_user)
    else
      render :new
    end
  end

  private

  def account_params
    params.require(:account).permit(:bank, :type, :name, :maximum_capital)
  end
end
