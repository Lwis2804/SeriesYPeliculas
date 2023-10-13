
import Foundation

struct UpcomingResponse: Codable {
    var dates : Dates?
    var page : Int?
    var results : [UpcomingResults]?
    var total_pages : Int?
    var total_results : Int?
}
