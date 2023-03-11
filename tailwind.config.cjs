/** @type {import('tailwindcss').Config} */
module.exports = {
	content: ['./src/**/*.{html,js,svelte,ts}'],
	theme: {
		extend: {
			scale: {
				25: '.25'
			}
		},
		fontFamily: {
			roboto: ['Roboto', 'sans-serif']
		}
	},
	plugins: []
};
