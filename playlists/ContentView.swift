//
//  ContentView.swift
//  playlists
//
//  Created by Sena Lee on 10/4/21.
//

import SwiftUI

struct ContentView: View {
    @State var playlists = [
        Playlist(name: "september", songs:
                    [
                        Song(title: "This Ain't That", artist: "Trippie Redd"),
                        Song(title: "BabyWipe", artist: "Ski Mask The Slump God"),
                        Song(title: "Bad News", artist: "The Kid LAROI"),
                        Song(title: "Everything We Need", artist: "Kanye West")
                    ]
                ),
        
        Playlist(name: "october", songs:
                    [
                        Song(title: "Heartbreak Anniversary", artist: "GIVEŌN"),
                        Song(title: "Dr. Seuss", artist: "Ski Mask The Slump God"),
                        Song(title: "LO$ER=LO♡ER", artist: "tomorrow x together"),
                        Song(title: "Nevada", artist: "YoungBoy Never Broke Again")
                    ]
                )
    ]
    
    
    var body: some View {
        NavigationView {
            List(playlists) { playlist in
                NavigationLink(destination: PlaylistView()) {
                    Text(playlist.name)
                }
            }
            .navigationTitle("My Playlists")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
