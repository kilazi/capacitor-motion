declare module "@capacitor/core" {
  interface PluginRegistry {
    CapacitorMotion: CapacitorMotionPlugin;
  }
}

export interface CapacitorMotionPlugin {
  startTracking(): Promise<any>;
}
