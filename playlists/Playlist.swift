//
//  Playlist.swift
//  playlists
//
//  Created by Sena Lee on 10/4/21.
//

import Foundation

struct Playlist: Identifiable{
    var name: String
    var songs: [Song] = []
    var id = UUID()
}
