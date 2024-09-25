class StaticPagesController < ApplicationController
  def home
    return unless logged_in?

    @feed_items = current_user.feed.paginate(page: params[:page])
    @micropost = current_user.microposts.build
  end

  def help
  end

  def about
  end

  def contact
  end
end
