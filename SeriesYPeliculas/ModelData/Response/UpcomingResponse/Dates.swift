

import Foundation
struct Dates : Codable {
	var maximum : String?
	var minimum : String?

	enum CodingKeys: String, CodingKey {

		case maximum = "maximum"
		case minimum = "minimum"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		maximum = try values.decodeIfPresent(String.self, forKey: .maximum)
		minimum = try values.decodeIfPresent(String.self, forKey: .minimum)
	}

}