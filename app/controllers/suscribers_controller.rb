class SuscribersController < ApplicationController
  before_action :set_suscriber, only: [:show, :edit, :update, :destroy]

  # GET /suscribers
  # GET /suscribers.json
  def index
    @suscribers = Suscriber.all
  end

  # GET /suscribers/1
  # GET /suscribers/1.json
  def show
  end

  # GET /suscribers/new
  def new
    @suscriber = Suscriber.new
  end

  # GET /suscribers/1/edit
  def edit
  end

  # POST /suscribers
  # POST /suscribers.json
  def create
    @suscriber = Suscriber.new(suscriber_params)

    respond_to do |format|
      if @suscriber.save
        format.html { redirect_to suscribe_path, notice: 'Suscriber was successfully created.' }
        format.json { render :show, status: :created, location: suscribe_path }
      else
        format.html { render :new }
        format.json { render json: @suscriber.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /suscribers/1
  # PATCH/PUT /suscribers/1.json
  def update
    respond_to do |format|
      if @suscriber.update(suscriber_params)
        format.html { redirect_to @suscriber, notice: 'Suscriber was successfully updated.' }
        format.json { render :show, status: :ok, location: @suscriber }
      else
        format.html { render :edit }
        format.json { render json: @suscriber.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /suscribers/1
  # DELETE /suscribers/1.json
  def destroy
    @suscriber.destroy
    respond_to do |format|
      format.html { redirect_to suscribers_url, notice: 'Suscriber was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_suscriber
      @suscriber = Suscriber.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def suscriber_params
      params.require(:suscriber).permit(:email)
    end
end
