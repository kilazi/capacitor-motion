import { Plugins } from '@capacitor/core';
import { CapacitorMotionPlugin } from './definitions';

const { CapacitorMotion } = Plugins;

export class CapMotion implements CapacitorMotionPlugin {
    startTracking(options: {value: string}): Promise<any> {
        return CapacitorMotion.startTracking(options);
    }
}