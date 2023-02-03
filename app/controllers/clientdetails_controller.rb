class ClientdetailsController < ApplicationController

  def new
    @clientdetail = Clientdetail.new
  end

  def show
  end

  def create
    Clientdetail.transaction do
      @clientdetail = Clientdetail.new(clientdetails_params)
      respond_to do |format|
        if @clientdetail.save
          format.html { redirect_to root_path }
          format.json { render :show, status: :created, location: @clientdetail }
        else
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @menu.errors, status: :unprocessable_entity }
        end
      end
    end
  end

  private

    def clientdetails_params
      params.require(:clientdetail).permit(:contact_name, :email_id, :phonenumber, :message, :company_name)
    end

end
