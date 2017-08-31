json.extract! message, :id, :sender_name, :sender_phone, :sender_email, :content, :created_at, :updated_at
json.url message_url(message, format: :json)
