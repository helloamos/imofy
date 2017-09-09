json.extract! inquiry_mail, :id, :sender_name, :sender_phone, :sender_email, :content, :user_id, :created_at, :updated_at
json.url inquiry_mail_url(inquiry_mail, format: :json)
