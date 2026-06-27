import Foundation
import SwiftData

@Model
final class RoadBookEntry {
    var createdAt: Date

    init(createdAt: Date = .now) {
        self.createdAt = createdAt
    }
}
