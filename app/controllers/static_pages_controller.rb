class StaticPagesController < ApplicationController
  def home
    if signed_in?
      @contract = current_user.contracts.build
      @micropost = current_user.microposts.build
      @feed_items = current_user.feed.paginate(page: params[:page])
      @cfeed_items = current_user.cfeed.paginate(page: params[:page])
    end
  end

  def help
  end

  def about
  end

  def contact
  end
end
