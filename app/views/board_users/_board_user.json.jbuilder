json.extract! board_user, :id, :display_name, :account_id, :store_id, :level, :created_at, :updated_at
json.url board_user_url(board_user, format: :json)
