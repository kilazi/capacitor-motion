import { WebPlugin } from '@capacitor/core';
import { CapacitorMotionPlugin } from './definitions';

export class CapacitorMotionWeb extends WebPlugin implements CapacitorMotionPlugin {
  constructor() {
    super({
      name: 'CapacitorMotion',
      platforms: ['web']
    });
  }

  async echo(options: { value: string }): Promise<{value: string}> {
    console.log('ECHO', options);
    return options;
  }
}

const CapacitorMotion = new CapacitorMotionWeb();

export { CapacitorMotion };

import { registerWebPlugin } from '@capacitor/core';
registerWebPlugin(CapacitorMotion);
