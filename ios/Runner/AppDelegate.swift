import UIKit
import Flutter


@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
     GeneratedPluginRegistrant.register(with : self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }

//
//    private func registerPlugins(registry: FlutterPluginRegistry) {
//       if( !registry.hasPlugin("vn.hunghd.flutter_downloader") ){
//           FlutterDownloaderPlugin.register(with: registry.registrar(forPlugin: "vn.hunghd.flutter_downloader"))
//        }
//    }
}