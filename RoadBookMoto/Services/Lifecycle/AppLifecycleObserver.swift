import SwiftUI

@MainActor
final class AppLifecycleObserver: AppLifecycleObserving {
    func scenePhaseDidChange(_ phase: ScenePhase) {
        switch phase {
        case .active:
            print("Application became active")
        case .inactive:
            print("Application became inactive")
        case .background:
            print("Application entered background")
        @unknown default:
            break
        }
    }
}
