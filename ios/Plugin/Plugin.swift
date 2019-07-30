import Foundation
import Capacitor

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitor.ionicframework.com/docs/plugins/ios
 */
@objc(CapacitorMotion)
public class CapacitorMotion: CAPPlugin {
    
    @objc func startTracking(_ call: CAPPluginCall) {
        call.success([
            "test": "tset"
        ])
    }
}
