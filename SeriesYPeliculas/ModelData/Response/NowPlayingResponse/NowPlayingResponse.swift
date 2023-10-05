//  NowPlayingResponse.swift
//  SeriesYPeliculas
//  Created by Moises Abraham Vazquez Perez on 28/09/23.

import Foundation

struct NowPlayingResponse : Codable {
    let dates : DatesNPResponse?
    let page : Int?
    let results : [ResultsNPResponse]?
    let total_pages : Int?
    let total_results : Int?
}
