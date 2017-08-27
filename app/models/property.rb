class Property < ActiveRecord::Base
	#before_create :generate_random_id
	extend FriendlyId
  	friendly_id :name, use: :slugged

	# Relationship
	belongs_to :user
	belongs_to :property_type
	belongs_to :contract_type
	belongs_to :status

	# Date validation
	validates_presence_of :name, :price,  :city, :neighborhood, :status, :property_type, :contract_type
	validates :slug, uniqueness: true 

	# Paperclip usage
 	has_attached_file :thumbnail, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/uploads/:style/missing.png",  validate_media_type: false
    validates_attachment_content_type :thumbnail, content_type: /\Aimage\/.*\z/


    private 
		 def generate_random_id
		    begin
		    self.slug = SecureRandom.random_number(1_000_000_000)
		    end while User.where(slug: self.slug).exists?
		 end 
end