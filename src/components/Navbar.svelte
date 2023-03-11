<script lang="ts">
	import { page } from '$app/stores';
</script>

<nav class=" menu shadow p-3">
	<div class="container w-11/12 mx-auto flex items-center justify-between flex-wrap">
		<a class="flex items-center text-white mr-6" href="/">
			<span class="text-6xl font-bold">S</span>
			<span class="font-semibold text-2xl tracking-tight mt-7">treaming</span>
		</a>
		<div class="block md:hidden">
			<button
				class="flex items-center px-3 py-2 border rounded text-teal-200 border-teal-400 hover:text-white hover:border-white"
			>
				<svg class="fill-current h-3 w-3" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"
					><title>Menu</title><path d="M0 3h20v2H0V3zm0 6h20v2H0V9zm0 6h20v2H0v-2z" /></svg
				>
			</button>
		</div>
		<div class="w-full hidden flex-grow md:flex md:items-center md:w-auto">
			<div class="flex justify-end mr-5 font-semibold text-md md:flex-grow">
				<!-- <a
					href="/"
					class="block mt-4 lg:inline-block text-purple-300 lg:mt-0 active:text-white hover:text-white mr-4"
				>
					Home
				</a> -->
			</div>
		</div>
	</div>
</nav>
