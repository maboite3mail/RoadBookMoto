import Foundation

@MainActor
protocol NavigationLauncher {
    func navigate(latitude: Double, longitude: Double)
}
