import { Plugins } from '@capacitor/core';
import { CapacitorMotionPlugin } from './definitions';


const plugin: CapacitorMotionPlugin = Plugins.CapacitorMotion;

/**
 * Call this method to start tracking motion data (listen to the updates in the window. events)
 * @param value None
 */
export const startTracking = (value?: string): Promise<any> => {
    return new Promise((resolve, reject) => {
        plugin.startTracking({ value: value }).then(res => {
            resolve(res);
        }, err => {
            reject(err);
        })
    })
}