import { sveltekit } from '@sveltejs/kit/vite';
import type { UserConfig } from 'vite';

const config: UserConfig = {
	plugins: [sveltekit()],
	esbuild: {
		platform: 'node',
		format: 'esm',
		target: 'esnext'
	}
};

export default config;
