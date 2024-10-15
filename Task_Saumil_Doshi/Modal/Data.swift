
import Foundation

// MARK: - Nested Data Model
struct ProductData: Codable {
    let color: String?
    let capacity: String?
    let capacityGB: Int?
    let price: Double?
    let generation: String?
    let year: Int?
    let cpuModel: String?
    let hardDiskSize: String?
    let strapColour: String?
    let caseSize: String?
    let description: String?
    let screenSize: Double?
    let priceAlternate: String?
    let generationAlternate: String?
    let colorAlternate: String?
    let capacityAlternate: String?
    let descriptionAlternate: String?
    
    enum CodingKeys: String, CodingKey {
        case color
        case capacity
        case capacityGB = "capacity GB"
        case price
        case generation
        case year
        case cpuModel = "CPU model"
        case hardDiskSize = "Hard disk size"
        case strapColour = "Strap Colour"
        case caseSize = "Case Size"
        case description
        case screenSize = "Screen size"
        case priceAlternate = "Price"
        case generationAlternate = "Generation"
        case colorAlternate = "Color"
        case capacityAlternate = "Capacity"
        case descriptionAlternate = "Description"
    }

    // Custom initializer for handling multiple keys
//    init(from decoder: Decoder) throws {
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        
//        // Decode normally where possible
//        color = try container.decodeIfPresent(String.self, forKey: .color)
//        capacity = try container.decodeIfPresent(String.self, forKey: .capacity)
//        capacityGB = try container.decodeIfPresent(Int.self, forKey: .capacityGB)
//        year = try container.decodeIfPresent(Int.self, forKey: .year)
//        cpuModel = try container.decodeIfPresent(String.self, forKey: .cpuModel)
//        hardDiskSize = try container.decodeIfPresent(String.self, forKey: .hardDiskSize)
//        strapColour = try container.decodeIfPresent(String.self, forKey: .strapColour)
//        caseSize = try container.decodeIfPresent(String.self, forKey: .caseSize)
//        description = try container.decodeIfPresent(String.self, forKey: .description)
//        screenSize = try container.decodeIfPresent(Double.self, forKey: .screenSize)
//        
//        // Handle inconsistent key names for price
//        price = try container.decodeIfPresent(Double.self, forKey: .price) ??
//                (try container.decodeIfPresent(Double.self, forKey: .priceAlternate))
//
//        
//        // Handle inconsistent key names for generation
//        generation = try container.decodeIfPresent(String.self, forKey: .generation) ??
//                            (try container.decodeIfPresent(String.self, forKey: .generationAlternate))
//    }
}
