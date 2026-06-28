import Foundation
import SwiftUI

@MainActor
final class HomeViewModel {
    let title = "RoadBook Moto"
    private let navigationLauncher: NavigationLauncher
    private let appLifecycleObserver: AppLifecycleObserving
    private let locationMonitoring: LocationMonitoring

    init(
        navigationLauncher: NavigationLauncher = WazeLauncher(),
        appLifecycleObserver: AppLifecycleObserving = AppLifecycleObserver(),
        locationMonitoring: LocationMonitoring = LocationMonitor()
    ) {
        self.navigationLauncher = navigationLauncher
        self.appLifecycleObserver = appLifecycleObserver
        self.locationMonitoring = locationMonitoring
    }

    func openTestWaypoint() {
        navigationLauncher.navigate(latitude: 45.0400, longitude: -0.5600)
    }

    func scenePhaseDidChange(_ phase: ScenePhase) {
        appLifecycleObserver.scenePhaseDidChange(phase)
    }

    func startLocationMonitoring() {
        locationMonitoring.startMonitoring()
    }
}
