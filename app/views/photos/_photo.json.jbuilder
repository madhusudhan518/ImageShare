json.extract! photo, :id, :image_uid, :tag_line, :album_id, :created_at, :updated_at
json.url photo_url(photo, format: :json)
