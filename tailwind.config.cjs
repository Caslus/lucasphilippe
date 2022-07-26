/** @type {import('tailwindcss').Config} */
module.exports = {
	content: ["./src/**/*.{astro,html,js,jsx,md,svelte,ts,tsx,vue}"],
	plugins: [require("tailwind-scrollbar")],
	theme: {
		extend: {},
		colors: {
			background: "#0b0909",
			foreground: "#d6d6d6",
			"foreground-darker": "#8c8c8c",
			primary: "#B33030",
		},
		fontFamily: {
			sans: [
				"Inter",
				"Segoe UI",
				"Roboto",
				"Oxygen",
				"Ubuntu",
				"Cantarell",
				"Fira Sans",
				"Droid Sans",
				"Helvetica Neue",
				"Helvetica",
				"Arial",
			],
		},
	},
};
