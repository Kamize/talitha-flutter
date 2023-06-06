import UIKit
import Flutter
import GoogleMaps
// Talitha Nabila - 1301204516
@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
  _ application: UIApplication,
  didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey:
  Any]?
  ) -> Bool {
    GMSServices.provideAPIKey("AIzaSyC-PfYkXilmkIqftP3OymPfh2KWvAYgjpU")
    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
