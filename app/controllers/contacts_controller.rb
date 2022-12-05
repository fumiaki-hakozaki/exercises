class ContactsController < ApplicationController
  def index
    @contacts = Contact.all
  end

  def new
    @contact = Contact.new
  end

  def show
    @contact = Contact.find(params[:id])
  end

  def edit
    @contact = Contact.find(params[:id])
  end

  def destroy
    @contact = Contact.find(params[:id])
    @contact.destroy
    redirect_to contacts_path, notice: "削除しました！"
  end

  def update
    @contact = Contact.find(params[:id])
    if @contact.update(contact_params)
      redirect_to contacts_path, notice: "内容変更しました！"
      else
        render :edit

    end
  end

  def create
    #Contact.create(Name: params[:contact][:Name],Email: params[:contact][:Email],Content: params[:contact][:content])
    #Contact.create(params.require(:contact).permit(:Name, :Email, :Content))
    @contact = Contact.new(Name: params[:contact][:Name],Email: params[:contact][:Email],Content: params[:contact][:content])
    if @contact.save
      redirect_to new_contact_path, notice: "作成しました！"
    else
      render :new
    end
  end
  private

  def contact_params
    params.require(:contact).permit(:Name, :Email, :Content)
  end
end

