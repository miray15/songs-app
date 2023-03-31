json.extract! song, :id, :created_at, :updated_at, :title, :artist, :album, :year
json.url songs_url(song, format: :json)

