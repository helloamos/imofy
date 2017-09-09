class InquiryMailsController < ApplicationController
  before_action :set_inquiry_mail, only: [:show, :edit, :update, :destroy]

  # GET /inquiry_mails
  # GET /inquiry_mails.json
  def index
    @inquiry_mails = InquiryMail.all
  end

  # GET /inquiry_mails/1
  # GET /inquiry_mails/1.json
  def show
  end

  # GET /inquiry_mails/new
  def new
    @inquiry_mail = InquiryMail.new
  end

  # GET /inquiry_mails/1/edit
  def edit
  end

  # POST /inquiry_mails
  # POST /inquiry_mails.json
  def create
    
    @inquiry_mail = InquiryMail.new(inquiry_mail_params)
    property = Property.find(@inquiry_mail.property_id)

    respond_to do |format|
      if @inquiry_mail.save
        ContactMailer.inquiry_email(@inquiry_mail.user_id, @inquiry_mail.sender_name, @inquiry_mail.sender_phone, @inquiry_mail.sender_email, @inquiry_mail.property_id, @inquiry_mail.property_url).deliver_now
        format.html { redirect_to property, notice: 'Message envoyé avec succès.' }
        format.json { render :show, status: :created, location: @inquiry_mail }
      else
        format.html { render :new }
        format.json { render json: @inquiry_mail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /inquiry_mails/1
  # PATCH/PUT /inquiry_mails/1.json
  def update
    respond_to do |format|
      if @inquiry_mail.update(inquiry_mail_params)
        format.html { redirect_to @inquiry_mail, notice: 'Inquiry mail was successfully updated.' }
        format.json { render :show, status: :ok, location: @inquiry_mail }
      else
        format.html { render :edit }
        format.json { render json: @inquiry_mail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inquiry_mails/1
  # DELETE /inquiry_mails/1.json
  def destroy
    @inquiry_mail.destroy
    respond_to do |format|
      format.html { redirect_to inquiry_mails_url, notice: 'Inquiry mail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inquiry_mail
      @inquiry_mail = InquiryMail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def inquiry_mail_params
      params.require(:inquiry_mail).permit(:sender_name, :sender_phone, :sender_email, :content, :user_id, :property_id, :property_url)
    end
end
