json.extract! event, :id, :name, :edition, :location, :created_at, :updated_at
json.url event_url(event, format: :json)
