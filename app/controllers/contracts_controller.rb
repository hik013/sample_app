class MicropostsController < ApplicationController
  before_filter :signed_in_user

  def create
    @contract = current_user.contracts.build(params[:controller])
    if @contract.save
      flash[:success] = "Contract created!"
      redirect_to root_url
    else
      render 'static_pages/home'
    end
  end

  def destroy
  end
end
