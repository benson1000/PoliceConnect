class ContactsController < ApplicationController

    def new
        #new contact form.
        @contact = Contact.new
    end

    def create
        @contact = Contact.new(contact_params)
        if @contact.save
        flash[:success] = "Thank you #{@contact.name} for your comment. We will get back to you shortly."
        redirect_to root_path
        else
        flash[:danger] = "Dear #{@contact.name} your message has NOT been Sent."
        redirect_to new_contact_path
        end
    end

    private
    def contact_params
        params.require(:contact).permit(:name, :email, :subject, :message)
    end
end
