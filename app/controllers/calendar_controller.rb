class CalendarController < ApplicationController
  before_filter :set_organization
  def index

  end

  def set_organization
    @organization = Organization.find(params[:organization_id])
  end
end
