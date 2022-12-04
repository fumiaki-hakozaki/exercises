class ContactsController < ApplicationController
  def index
  end

  def new
    @contact = Contact.new
  end

  def create
    #Contact.create(Name: params[:contact][:Name],Email: params[:contact][:Email],Content: params[:contact][:content])
    #Contact.create(params.require(:contact).permit(:Name, :Email, :Content))
    @contact = Contact.new(Name: params[:contact][:Name],Email: params[:contact][:Email],Content: params[:contact][:content])
    if @contact.save
      redirect_to contacts_path, notice: "作成しました！"
    else
      render :new
    end
  end
end

