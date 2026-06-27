import SwiftData
import SwiftUI

@main
struct RoadBookMotoApp: App {
    var body: some Scene {
        WindowGroup {
            HomeView(viewModel: HomeViewModel())
        }
        .modelContainer(for: RoadBookEntry.self)
    }
}
