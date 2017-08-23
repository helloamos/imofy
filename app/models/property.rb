class Property < ActiveRecord::Base
	belongs_to :user
	belongs_to :property_type
	belongs_to :contract_type
	belongs_to :status

	# Paperclip usage
 	has_attached_file :thumbnail, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/uploads/:style/missing.png",  validate_media_type: false
  validates_attachment_content_type :thumbnail, content_type: /\Aimage\/.*\z/
end