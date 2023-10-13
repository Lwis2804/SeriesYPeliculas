
import Foundation

struct SearchResponse : Codable {
    var page : Int?
    var results : [String]?
    var total_pages : Int?
    var total_results : Int?

}
