class AdminsController < ApplicationController
  before_action :authenticate_admin!

  def index
    @contacts_grid = ContactsGrid.new(contacts_grid_params)
  end

  def destroy_all
    Contact.destroy_all

    redirect_to dashboard_path
  end

  private

  def contacts_grid_params
    params.fetch(:contacts_grid, {}).permit!
  end
end
