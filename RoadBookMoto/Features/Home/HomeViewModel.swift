import Foundation

@MainActor
final class HomeViewModel {
    let title = "RoadBook Moto"
    private let navigationLauncher: NavigationLauncher

    init(navigationLauncher: NavigationLauncher = WazeLauncher()) {
        self.navigationLauncher = navigationLauncher
    }

    func openTestWaypoint() {
        navigationLauncher.navigate(latitude: 45.0400, longitude: -0.5600)
    }
}
