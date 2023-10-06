//  NowPlayingResponse.swift
//  SeriesYPeliculas
//  Created by Moises Abraham Vazquez Perez on 28/09/23.

import Foundation

struct NowPlayingResponse : Codable {
    var dates : DatesNPResponse?
    var page : Int?
    var results : [NowPlayingResult]?
    var total_pages : Int?
    var total_results : Int?
}
