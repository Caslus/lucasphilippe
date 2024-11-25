// @ts-check
import tailwindIntegration from "@astrojs/tailwind";
import icon from "astro-icon";
import { defineConfig } from "astro/config";
import { url } from "./src/config/config";

// https://astro.build/config
export default defineConfig({
	integrations: [tailwindIntegration(), icon()],
	site: url,
});
