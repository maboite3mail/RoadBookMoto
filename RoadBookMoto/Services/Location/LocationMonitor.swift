import CoreLocation
import Foundation

final class LocationMonitor: NSObject, LocationMonitoring {
    private let locationManager: CLLocationManager

    override init() {
        self.locationManager = CLLocationManager()
        super.init()
        locationManager.delegate = self
    }

    func startMonitoring() {
        locationManager.requestWhenInUseAuthorization()
        startUpdatingLocationIfAuthorized()
    }

    private func authorizationStatusDescription(_ status: CLAuthorizationStatus) -> String {
        switch status {
        case .notDetermined:
            return "not determined"
        case .restricted:
            return "restricted"
        case .denied:
            return "denied"
        case .authorizedAlways:
            return "authorized always"
        case .authorizedWhenInUse:
            return "authorized when in use"
        @unknown default:
            return "unknown"
        }
    }

    private func startUpdatingLocationIfAuthorized() {
        switch locationManager.authorizationStatus {
        case .authorizedAlways, .authorizedWhenInUse:
            locationManager.startUpdatingLocation()
        default:
            break
        }
    }
}

extension LocationMonitor: CLLocationManagerDelegate {
    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
        print("Location authorization changed: \(authorizationStatusDescription(manager.authorizationStatus))")
        startUpdatingLocationIfAuthorized()
    }

    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.last else {
            return
        }

        print("Location update: latitude \(location.coordinate.latitude), longitude \(location.coordinate.longitude), horizontal accuracy \(location.horizontalAccuracy)")
    }
}
