import UIKit

@MainActor
final class WazeLauncher: NavigationLauncher {
    func navigate(latitude: Double, longitude: Double) {
        let coordinates = Self.coordinateString(latitude: latitude, longitude: longitude)
        let wazeURL = URL(string: "waze://?ll=\(coordinates)&navigate=yes")
        let appleMapsURL = URL(string: "maps://?ll=\(coordinates)")

        if let wazeURL, UIApplication.shared.canOpenURL(wazeURL) {
            UIApplication.shared.open(wazeURL)
            return
        }

        if let appleMapsURL {
            UIApplication.shared.open(appleMapsURL)
        }
    }

    private static func coordinateString(latitude: Double, longitude: Double) -> String {
        let latitudeString = String(format: "%.4f", locale: Locale(identifier: "en_US_POSIX"), latitude)
        let longitudeString = String(format: "%.4f", locale: Locale(identifier: "en_US_POSIX"), longitude)
        return "\(latitudeString),\(longitudeString)"
    }
}
