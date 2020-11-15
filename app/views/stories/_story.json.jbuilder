json.extract! story, :id, :name, :city, :age, :content, :allow_public_read, :is_public, :created_at, :updated_at
json.url story_url(story, format: :json)
