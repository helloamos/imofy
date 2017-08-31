class PropertiesController < ApplicationController
	before_action :authenticate_user!
	before_action :set_all_data, only: [:index, :edit, :update, :new]
	before_action :set_property, only: [:show, :edit, :update, :destroy]
	before_action :related_post, only: [:show]

	

	def index
		@properties = current_user.properties.order(created_at: :desc).paginate(:page => params[:page], :per_page => 8)
		render :layout => "dashboard"
	end

	def show
		@message = Message.new
	end


	def edit
		render :layout => "dashboard"
	end

	def new
		@property = Property.new
		render :layout => "dashboard"
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
	        format.html { redirect_to properties_path, notice: 'Operation was successfully updated.' }
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
		#@property= Property.find(params[:id])
		@property= Property.friendly.find(params[:id])
		
	end

	def property_params
		params.require(:property).permit(:name, :description, :property_type_id, :contract_type_id, :price, :city, :neighborhood, :status_id, :thumbnail)
	end

	def set_all_data
		
		@contract_types = ContractType.all
		@property_types = PropertyType.all
		@status = Status.all
		@unities = Unity.all
		
	end

	def related_post
		@related_property = Property.related_property(@property.property_type_id)
	end

end
