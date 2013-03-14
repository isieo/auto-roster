class ApplicationController < ActionController::Base
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
    if cookies[:time_zone]
      Time.zone = cookies[:time_zone]
    else
      Time.zone = "GMT"
    end
  end
end
