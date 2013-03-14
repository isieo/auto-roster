class CalendarController < ApplicationController
  before_filter :set_organization
  def index

  end

  def set_organization
    @organization = Organization.where(id: params[:organization_id]).first
    @organization = Organization.where(name: params[:organization_id]).first if !@organization
  end
end
