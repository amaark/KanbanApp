json.extract! card, :id, :column_id, :card_name, :description, :topic, :type, :created_at, :updated_at
json.url card_url(card, format: :json)
