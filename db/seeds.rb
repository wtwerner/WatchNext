20.times do
    tmdb_id = Faker::Number.number(digits: 6)
    to_watch = true
    watched = false
    Movie.create(
        tmdb_id: tmdb_id,
        to_watch: to_watch,
        watched: watched
    )
end