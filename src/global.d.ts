// Custom type definitions for SvelteKit and environment globals

declare module '$app/environment' {
  /** Running in the browser */
  export const browser: boolean;
  /** Dev mode */
  export const dev: boolean;
}

declare const APP_VERSION: string;
declare const APP_BUILD_HASH: string;
