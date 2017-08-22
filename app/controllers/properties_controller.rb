class PropertiesController < ApplicationController
	before_action :authenticate_user!
	layout("dashboard")
	def index
		@properties = Property.all
	end

	def show
	end

	def edit
	end

	def new
		@property = Property.new
	end

	

	def create
		#if params[:libelle].nil?
			#flash.now[:notice] = "Message is available in same request-response cycle"
		#else
		@property = current_user.properties.build(property_params)

	    respond_to do |format|
	      if @property.save
	      	
	        format.html { redirect_to properties_path, notice: 'Operation was successfully created.' }
	        format.json { render :show, status: :created, location: property_path }
	       else
	        format.html { render :new }
	        format.json { render json: @property.errors, status: :unprocessable_entity }
	      end
	    end
	#end
	end

	def update
	    respond_to do |format|
	      if @property.update(property_params)
	        format.html { redirect_tto property_path, notice: 'Operation was successfully updated.' }
	        format.json { render :show, status: :ok, location: @property }
	      else
	        format.html { render :edit }
	        format.json { render json: @property.errors, status: :unprocessable_entity }
	      end
	    end
	  end

	  # DELETE /ponies/1
	  # DELETE /ponies/1.json
	  def destroy
	    @property.destroy
	    respond_to do |format|
	      format.html { redirect_to properties_url, notice: 'Client was successfully destroyed.' }
	      format.json { head :no_content }
	      format.js   { render :layout => false }
	    end
	  end

	

	private

	def set_property
		@property= Property.find(params[:id])
		
	end
	def property_params
		params.require(:property).permit(:name, :description, :city, :neighborhood, :status)
	end

end
