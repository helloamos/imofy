class Property < ActiveRecord::Base
	#before_create :generate_random_id
	extend FriendlyId
  	friendly_id :name, use: :slugged

	
	# Paperclip usage
 	has_attached_file :thumbnail, styles: { medium: "300x150>", thumb: "100x100>", large: "960x526>" }, 
 	#:path => ":rails_root/public/system/:attachment/:id/:basename_:style.:extension",
 	#:path => ":rails_root/public/system/:class/:attachment/:id_partition/:style/:filename",
	#:url => "/system/:attachment/:id/:basename_:style.:extension",
	:url => "/system/:class/:attachment/:id_partition/:style/:filename",
 	default_url: "/images/uploads/:style/missing.png",  validate_media_type: false
    #has_attached_file :thumbnail, styles: { medium: "300x150>", thumb: "100x100>", large: "960x526>" }, default_url: "/system/:class/:attachment/:id_partition/:style/:filename",  validate_media_type: false

    validates_attachment_content_type :thumbnail, content_type: /\Aimage\/.*\z/
	
	# Relationship
	belongs_to :user
	belongs_to :property_type
	belongs_to :contract_type
	belongs_to :status

	# Date validation
	validates_presence_of :name, :price,  :description, :city, :neighborhood, :status, :unity_id, :property_type, :contract_type
	validates :slug, uniqueness: true 

	


    #private 
		 #def generate_random_id
		    #begin
		    #self.slug = SecureRandom.random_number(1_000_000_000)
		    #end while User.where(slug: self.slug).exists?
		 #end 

	 def self.related_property(type_id)
	 	where("property_type_id = ?", type_id)
	 end

	 def self.simple_search(contract_type, property_type)
	 	properties = Property.order(:name)
	    #products = products.where("name like ?", "%#{keywords}%") if keywords.present?
	    properties = properties.where(contract_type_id: contract_type) if contract_type.present?
	    properties = properties.where(property_type_id: property_type) if property_type.present?
	    #products = products.where("price >= ?", min_price) if min_price.present?
	    #products = products.where("price <= ?", max_price) if max_price.present?
	    properties
	 end
end