class PropertiesController < ApplicationController
	before_action :authenticate_user!
	before_action :set_all_data
	before_action :set_property, only: [:show, :edit, :update, :destroy]
	layout("dashboard")
	def index
		
	end

	def show
	end

	def edit
	end

	def new
		
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
	        format.html { redirect_to property_path, notice: 'Operation was successfully updated.' }
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
		params.require(:property).permit(:name, :description, :property_type_id, :contract_type_id, :price, :city, :neighborhood, :status_id, :thumbnail)
	end

	def set_all_data
		@property = Property.new
		@properties = Property.all
		@contract_types = ContractType.all
		@property_types = PropertyType.all
		@status = Status.all
	end

end
