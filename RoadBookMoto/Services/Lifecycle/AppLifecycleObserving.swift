import SwiftUI

@MainActor
protocol AppLifecycleObserving {
    func scenePhaseDidChange(_ phase: ScenePhase)
}
