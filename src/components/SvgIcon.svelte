<script lang="ts">
	import 'external-svg-loader';

	export let fill: string = '',
		className: string = '', // default 20px
		size: any = 'sm',
		icon: string;
	const _source = './icons/';

	$: icon = icon?.replace(/\.svg+$/g, '').toLowerCase();

	$: {
		switch (size) {
			case 'sm':
				className += 'scale-25';
				break;
			case 'md':
				className += 'scale-75';
				break;
			case 'lg':
				className += 'scale-125';
				break;
		}
	}
</script>

<svg
	data-cache={'3600'}
	data-src={`${_source}${icon}.svg`}
	data-unique-ids="disabled"
	data-css-scoping="enabled"
	fill={fill ? fill : 'currentColor'}
	class={className}
	{...$$restProps}
/>
<!-- <img alt="" class="{className}" src={`${_source}${icon}.svg`} {...$$restProps} /> -->
