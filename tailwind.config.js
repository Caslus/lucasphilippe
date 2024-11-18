/** @type {import('tailwindcss').Config} */
export default {
	content: ["./src/**/*.{astro,html,js,jsx,md,mdx,svelte,ts,tsx,vue}"],
	theme: {
		extend: {
			colors: {
				"background-dark": "#0b0909",
				"title-dark": "#d6d6d6",
				"content-dark": "#8c8c8c",
				"content-selection": "#a92e2f88",
			},
			screens: {
				"2xsm": "376px",
				xsm: "401px",
				sm: "451px",
				md: "801px",
			},
		},
	},
	plugins: [],
};
