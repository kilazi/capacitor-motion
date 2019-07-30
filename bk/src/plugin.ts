import { Plugins } from "@capacitor/core";
const { CapacitorMotionPlugin } = Plugins;
export class CapacitorMotion {
    startTracking() {
        return CapacitorMotionPlugin.startTracking();
    }
}