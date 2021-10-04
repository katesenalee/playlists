//
//  Song.swift
//  playlists
//
//  Created by Sena Lee on 10/4/21.
//

import Foundation

struct Song: Identifiable {
    var title: String
    var artist: String
    var id = UUID()
}
