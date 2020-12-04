class MovieSerializer
  include JSONAPI::Serializer
  attributes :tmdb_id, :watched, :to_watch
end
