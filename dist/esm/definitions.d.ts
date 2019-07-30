declare global {
    interface PluginRegistry {
        CapacitorMotion?: CapacitorMotionPlugin;
    }
}
export interface CapacitorMotionPlugin {
    startTracking(options: {
        value: string;
    }): Promise<any>;
}
