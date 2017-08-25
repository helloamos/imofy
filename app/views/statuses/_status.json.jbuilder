json.extract! status, :id, :nom, :description, :created_at, :updated_at
json.url status_url(status, format: :json)
