# Returns a new array with the concatenated results of running block once for every element in enum.
require 'pry'
album_infos = 100.times.flat_map do |i|
  10.times.map do |j|
    ["Album #{i}", j, "Artist #{j}"]
  end
end

album_artists = {}
album_track_artists = {}
album_infos.each do |album, track, artist|
  # Sets the key as the album and the value as an array of the artists
  # Creates a new key if the current one does not exist
  (album_artists[album] ||= []) << artist
  # Sets a key thats an array of album x, track x
  # Values is an array of the artist
  (album_track_artists[[album, track]] ||= []) << artist
end
album_artists.each_value(&:uniq!)

lookup = ->(album, track=nil) do
  if track
    album_track_artists[[album, track]]
  else
    album_artists[album]
  end
end
