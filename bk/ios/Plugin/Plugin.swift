import Foundation
import Capacitor
import CoreMotion

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitor.ionicframework.com/docs/plugins/ios
 */
@objc(CapacitorMotion)
public class CapacitorMotion: CAPPlugin {
    var timer = Timer()
    let motionManager = CMMotionManager();
    func JSONStringify(value: AnyObject,prettyPrinted:Bool = false) -> String{
    
            let options = prettyPrinted ? JSONSerialization.WritingOptions.prettyPrinted : JSONSerialization.WritingOptions(rawValue: 0)

        
            if JSONSerialization.isValidJSONObject(value) {
            
            do{
                let data = try JSONSerialization.data(withJSONObject: value, options: options)
                if let string = NSString(data: data, encoding: String.Encoding.utf8.rawValue) {
                    return string as String
                }
            }catch {
                
                print("error STRINGIFY")
                //Access error here
            }
            
        }
        return ""
        
    }

    @objc func startTracking(_ call: CAPPluginCall) {
        print("MOTION startTracking here");

		motionManager.startAccelerometerUpdates()
		motionManager.startGyroUpdates()
		motionManager.startMagnetometerUpdates()
		motionManager.startDeviceMotionUpdates()

        // let timer = Timer.scheduledTimer(timeInterval: 3.0, target: self, selector: #selector(self.update), userInfo: nil, repeats: true)
        print("B4 UPDATE MOTION startTracking here");
        update();
        Timer.scheduledTimer(timeInterval: 3, target: self, selector: #selector(UIMenuController.update), userInfo: nil, repeats: true);

        
        
        call.success([
            "value": "BACK HOME YO"
        ])
    }

    @objc func update() {
		if let accelerometerData = motionManager.accelerometerData {
			print("accelerometerData", accelerometerData)
            
            self.bridge.triggerJSEvent(eventName: "accelerometerData", target: "window");
            let jsonData = JSONStringify(value: accelerometerData, prettyPrinted: true);

            self.bridge.triggerJSEvent(eventName: "accelerometerData", target: "window", data: jsonData)
            print("accelerometerData JSON", jsonData)
		}
		if let gyroData = motionManager.gyroData {
			print(gyroData)
            self.bridge.triggerJSEvent(eventName: "gyroData", target: "window")
		}
		if let magnetometerData = motionManager.magnetometerData {
			print(magnetometerData)
		}
		if let deviceMotion = motionManager.deviceMotion {
			print(deviceMotion)
		}
	}
}
