/** @type {import('tailwindcss').Config} */
const plugin = require("tailwindcss/plugin");

const cardUtilities = plugin(function ({ addUtilities }) {
	addUtilities({
		".rotateY-180": {
			transform: "rotateY(180deg)",
		},
		".preserve-3d": {
			transformStyle: "preserve-3d",
		},
		".perspective": {
			perspective: "1000px",
		},
		".backface-hidden": {
			backfaceVisibility: "hidden",
		},
	});
});

module.exports = {
	content: ["./src/**/*.{astro,html,js,jsx,md,svelte,ts,tsx,vue}"],
	plugins: [require("tailwind-scrollbar"), cardUtilities],
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
