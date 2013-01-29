class ApplicationController < ActionController::Base
  before_filter :authenticate_user!
  protect_from_forgery
  before_filter :set_timezone
  helper_method :current_organization

  def current_organization
    if session[:current_organization].blank?
      session[:current_organization] = Organization.first
    end
    session[:current_organization]
  end

  def set_timezone
    if current_user && current_user.time_zone
      Time.zone = current_user.time_zone
    else
      Time.zone = "GMT"
    end
  end
end
