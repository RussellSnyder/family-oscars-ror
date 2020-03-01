json.extract! nomination, :id, :name, :description, :vote_count, :created_at, :updated_at
json.url nomination_url(nomination, format: :json)
