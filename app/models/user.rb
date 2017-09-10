class User < ApplicationRecord
  extend FriendlyId
    friendly_id :login, use: :slugged
  # Include default devise modules. Others available are:
  devise  :database_authenticatable, :registerable,:recoverable, :rememberable, :trackable, 
  :confirmable, :validatable, :omniauthable, omniauth_providers: [:facebook, :google_oauth2]


  SUJETS = ["Suggestions","Commentaires","Signaler une erreur détectée","Signaler un profil", "Témoignage","Autres"]

  def self.create_from_provider_data(provider_data)
    where(provider: provider_data.provider, uid: provider_data.uid).first_or_create do | user |
      user.email = provider_data.info.email
      user.password = Devise.friendly_token[0, 20]
      user.skip_confirmation!
    end
  end

  


  # Date validation
	validates :login, presence: true, uniqueness: true
  validates :company, presence: true, uniqueness: true
  validates :slug,  uniqueness: true
  validates :email, uniqueness: true
  

  has_many :properties
  has_many :messages

  # Paperclip usage
 	has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/avatar/:style/missing.png",  validate_media_type: false
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
end
