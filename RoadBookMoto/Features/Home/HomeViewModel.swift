import Foundation
import SwiftUI

@MainActor
final class HomeViewModel {
    let title = "RoadBook Moto"
    private let navigationLauncher: NavigationLauncher
    private let appLifecycleObserver: AppLifecycleObserving

    init(
        navigationLauncher: NavigationLauncher = WazeLauncher(),
        appLifecycleObserver: AppLifecycleObserving = AppLifecycleObserver()
    ) {
        self.navigationLauncher = navigationLauncher
        self.appLifecycleObserver = appLifecycleObserver
    }

    func openTestWaypoint() {
        navigationLauncher.navigate(latitude: 45.0400, longitude: -0.5600)
    }

    func scenePhaseDidChange(_ phase: ScenePhase) {
        appLifecycleObserver.scenePhaseDidChange(phase)
    }
}
