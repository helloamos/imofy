class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  extend FriendlyId
    friendly_id :login, use: :slugged


  # Date validation
	validates :login, presence: true, uniqueness: true
  validates :company, presence: true, uniqueness: true
  validates :slug,  uniqueness: true
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :properties
  has_many :messages

  # Paperclip usage
 	has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/avatar/:style/missing.png",  validate_media_type: false
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
end
