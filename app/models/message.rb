class Message < ApplicationRecord
	belongs_to :recipient, :foreign_key => "recipient_id", :class_name => "User"
end
