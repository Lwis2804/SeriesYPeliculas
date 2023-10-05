
import Foundation

struct UpcomingResponse: Codable {
    var dates : Dates?
    var page : Int?
    var results : [UpcomingResults]?
    var total_pages : Int?
    var total_results : Int?

    enum CodingKeys: String, CodingKey {

        case dates = "dates"
        case page = "page"
        case results = "results"
        case total_pages = "total_pages"
        case total_results = "total_results"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        dates = try values.decodeIfPresent(Dates.self, forKey: .dates)
        page = try values.decodeIfPresent(Int.self, forKey: .page)
        results = try values.decodeIfPresent([UpcomingResults].self, forKey: .results)
        total_pages = try values.decodeIfPresent(Int.self, forKey: .total_pages)
        total_results = try values.decodeIfPresent(Int.self, forKey: .total_results)
    }

}
