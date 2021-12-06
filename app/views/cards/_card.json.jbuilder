json.extract! card, :id, :column_id, :card_title, :description, :topic, :card_type, :created_at, :updated_at
json.url card_url(card, format: :json)
