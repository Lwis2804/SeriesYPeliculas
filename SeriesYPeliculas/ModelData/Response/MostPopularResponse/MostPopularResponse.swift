

import Foundation

struct MostPopularResponse: Codable {
    var page : Int?
    var results : [MostPopularResults]?
    var total_pages : Int?
    var total_results : Int?

}
