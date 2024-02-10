import { defineConfig } from 'vite'
import { viteCommonjs } from '@originjs/vite-plugin-commonjs'

export default defineConfig({
  plugins: [viteCommonjs()],
  define: {
    'process.env': {},
    // 'global': 'window'
  },
  test: {
    // globals: true,
    // requires node >= 16
    environment: "jsdom",
    include: ['**/*.test.bs.js', '**/*_test.bs.js', '**/*.{test,spec}.{js,mjs,cjs,ts,mts,cts,jsx,tsx}'],
  },
})
