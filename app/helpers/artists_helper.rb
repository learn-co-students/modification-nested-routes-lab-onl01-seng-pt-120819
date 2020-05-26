module ArtistsHelper
  def display_artist(song)
    song.artist.nil? ? link_to("Add Artist", edit_song_path(song)) : link_to(song.artist_name, artist_path(song.artist))
  end

  def artist_select(song)
    if song.artist.nil?
        select_tag "song[artist_id]", options_from_collection_for_select(Artist.all, :id, :name)
    else
        hidden_field_tag "song[artist_id]", song.artist_id
    end        
end

# Official Solution
# Display dropdown of artists, with name if editing through nested

# def artist_select(song, path)
#   if song.artist && path == "nested"
#     hidden_field_tag "song[artist_id]", song.artist_id
#   else
#     select_tag "song[artist_id]", options_from_collection_for_select(Artist.all, :id, :name)
#   end
# end

# Display name if editing through nested
# def display_name(song, path)
#   if song.artist && path == "nested"
#     song.artist.name
#   end
# end
end
