// import '@capacitor/core';

// declare module '@capacitor/core' {
//   interface PluginRegistry {
//     CapacitorMotion?: CapacitorMotionPlugin;
//   }
// }

declare global {
  interface PluginRegistry {
    CapacitorMotion?: CapacitorMotionPlugin;
  }
}

export interface CapacitorMotionPlugin {
  // echo(options: { value: string }): Promise<{value: string}>;
  startTracking(options: {value: string}): Promise<any>;
}
