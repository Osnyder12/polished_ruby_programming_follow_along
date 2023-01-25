require 'pry'
album_infos = 100.times.flat_map do |i|
  10.times.map do |j|
    ["Album #{i}", j, "Artist #{j}"]
  end
end

albums = {}
album_infos.each do |album, track, artist|
  # Set a hash with the album as the key if it doesnt already exist
  # Inside of that hash set the key as the current track and the value being the artist
  ((albums[album] ||= {})[track] ||= []) << artist
end

# lookup is a lamba that takes in a album and track 
# lookup.call('Album 1', 1)
lookup = ->(album, track=nil) do
  if track
    albums.dig(album, track)
  else
    a = albums[album].each_value.to_a
    a.flatten!
    a.uniq!
    a
  end
end