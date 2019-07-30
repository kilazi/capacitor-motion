import Foundation
import Capacitor
import FirebaseCore
import FirebaseAnalytics

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitor.ionicframework.com/docs/plugins/ios
 */
@objc(CapacitorMotion)
public class CapacitorMotion: CAPPlugin {
    
    @objc func sendUserID(_ call: CAPPluginCall) {
        let value = call.getString("value") ?? ""
        print("sendUserID here w/ args \(value)");
        Analytics.setUserID(value);
        call.success([
            "test": value
        ])
    }
}
