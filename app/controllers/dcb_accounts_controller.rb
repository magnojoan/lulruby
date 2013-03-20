class DcbAccountsController < ApplicationController
def index
		@dcb_accounts = DcbAccount.all
end

def new
	@dcb_account = DcbAccount.new
end


  def create
    @dcb_account = DcbAccount.new(params[:dcb_account])
    if @dcb_account.save
      redirect_to dcb_accounts_path
    else
      render :new
    end
  end

  def show
    @dcb_account = DcbAccount.find(params[:id])
  end

  def edit
    @dcb_account = DcbAccount.find(params[:id])
  end

  def update
    @dcb_account = DcbAccount.find(params[:id])
    if @dcb_account.update_attributes(params[:dcb_account])
      redirect_to dcb_accounts_path
    else
      render :edit
    end
  end

  def destroy
    dcb_account = DcbAccount.find(params[:id])
    dcb_account.destroy

    redirect_to dcb_accounts_path
  end

end