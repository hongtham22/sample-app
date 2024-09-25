class ApplicationController < ActionController::Base
  include SessionsHelper
  rescue_from ActiveRecord::RecordNotFound, with: :render_404

  private

  # Confirms a logged-in user.
  def logged_in_user
    return if logged_in?

    store_location
    flash[:danger] = 'Please log in.'
    redirect_to login_url
  end

  def render_404
    render file: "#{Rails.root}/public/404.html"
  end
end
