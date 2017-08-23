class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

         has_many :properties
 	has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/avatar/:style/missing.png",  validate_media_type: false

	# Paperclip usage
 	#has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/system/:class/:attachment/:id_partition/:style/:filename.extension",  validate_media_type: false
  	validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
end
