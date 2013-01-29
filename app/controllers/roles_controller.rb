class RolesController < ApplicationController
  before_filter :set_organization
  def index
    @roles = @organization.user_roles.where(user_id: current_user.id)
  end

  def set_organization
    @organization = Organization.find(params[:organization_id])
  end

  def show
    @role = @organization.user_roles.find(params[:id])
  end

  def new
    @role = @organization.user_roles.new
  end

  def edit
    @role = @organization.user_roles.find(params[:id])
  end

  def create
    @role = @organization.user_roles.new(params[:user_role])
    @role.user = current_user

    if @role.save
      redirect_to organization_roles_path, notice: 'Role was successfully created.'
    else
      render action: "new"
    end
  end

  # PUT /organizations/1
  # PUT /organizations/1.json
  def update
    @role = @organization.user_roles.find(params[:id])

    if @role.update_attributes(params[:user_role])
      redirect_to organization_roles_path(@organization), notice: 'Organization was successfully updated.'
    else
     render action: "edit"
    end
  end

  # DELETE /organizations/1
  # DELETE /organizations/1.json
  def destroy
    @role = @organization.user_roles.find(params[:id])
    @role.destroy

    redirect_to organization_roles_url
  end
end
