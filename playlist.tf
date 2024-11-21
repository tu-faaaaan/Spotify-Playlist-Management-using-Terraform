resource "spotify_playlist" "bollywood"{
    name = "Bollywood"
    tracks = ["5zCnGtCl5Ac5zlFHXaZmhy"] 
}

data "spotify_search_track" "arijit" {
  artist = "Arijit Singh"
}

resource "spotify_playlist" "arijit" {
    name = "Arjit Singh Hits"
    description = "This playlist was created by Terraform"
    public = false
    tracks = [data.spotify_search_track.arijit.tracks[1].id,
    data.spotify_search_track.arijit.tracks[5].id,
    data.spotify_search_track.arijit.tracks[6].id]
}