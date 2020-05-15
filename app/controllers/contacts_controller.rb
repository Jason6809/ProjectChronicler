class ContactsController < ApplicationController
  def index
    @contact = Contact.new
  end

  def show
    @contact = Contact.find(params[:id])
  end

  def create
    @contact = Contact.new(contact_params)

    if @contact.save
      redirect_to @contact
    else
      render :index
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:full_name, :phone_num, :shop_name, :ic_no, :temp)
  end
end
