
import Foundation

struct TopRatedResponse: Codable {
    var page : Int?
    var results : [TopRatedResults]?
    var total_pages : Int?
    var total_results : Int?

}
