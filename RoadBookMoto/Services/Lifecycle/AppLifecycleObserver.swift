import SwiftUI

@MainActor
final class AppLifecycleObserver: AppLifecycleObserving {
    func scenePhaseDidChange(_ phase: ScenePhase) {
        switch phase {
        case .active:
            print("[Lifecycle] Application became active")
        case .inactive:
            print("[Lifecycle] Application became inactive")
        case .background:
            print("[Lifecycle] Application entered background")
        @unknown default:
            print("[Lifecycle] Unknown scene phase")
        }
    }
}
