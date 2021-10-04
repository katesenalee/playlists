//
//  PlaylistView.swift
//  playlists
//
//  Created by Sena Lee on 10/4/21.
//

import SwiftUI

struct PlaylistView: View {
    var playlist: Playlist
    
    var body: some View {
        List(playlist.songs) { song in
            VStack(alignment: .leading) {
                Text(song.title)
                Text(song.artist)
            }
        }
        .navigationTitle(playlist.name)
    }
}

struct PlaylistView_Previews: PreviewProvider {
    static var previews: some View {
        PlaylistView(playlist: Playlist(name: "october", songs:
                                            [
                                                Song(title: "Heartbreak Anniversary", artist: "GIVEŌN"),
                                                Song(title: "Dr. Seuss", artist: "Ski Mask The Slump God"),
                                                Song(title: "LO$ER=LO♡ER", artist: "tomorrow x together"),
                                                Song(title: "Nevada", artist: "YoungBoy Never Broke Again")
                                            ]
                                        ))
    }
}
