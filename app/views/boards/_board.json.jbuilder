json.extract! board, :id, :board_title, :created_at, :updated_at
json.url board_url(board, format: :json)
