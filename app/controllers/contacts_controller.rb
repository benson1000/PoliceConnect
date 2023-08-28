class ContactsController < ApplicationController

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
        flash[:success] = "Dear #{@contact.name}, we have received your message/issue. We will get back to you shortly."
        redirect_to root_path
    else
        flash[:danger] = "Dear #{@contact.name}, Your message has NOT been sent. Please try again!"
        redirect_to new_contact_path
    end
  end

  private
  def contact_params
    params.require(:contact).permit(:name, :email, :subject, :message)
  end
end
