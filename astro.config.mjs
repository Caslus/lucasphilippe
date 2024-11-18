// @ts-check
import tailwindIntegration from "@astrojs/tailwind";
import { defineConfig } from "astro/config";

// https://astro.build/config
export default defineConfig({
	integrations: [tailwindIntegration()],
	site: "https://lucasphilippe.com",
});
