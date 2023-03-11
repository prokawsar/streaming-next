<script lang="ts">
	export let skill: string = '',
		color: string = 'bg-blue-500',
		className: string = '',
		align: string = 'left',
		skillExpertise: number = 50;

	$: skillExpertise = skillExpertise < 100 && skillExpertise > 0 ? skillExpertise : 0;
</script>

<div class="m-2 {className}">
	<p class="flex" class:justify-end={align == 'right'}>{skill}</p>
	<div class="w-full bg-gray-300 rounded-md">
		<div class="h-2 rounded-md {color}" style="width: {skillExpertise}%;" />
	</div>
</div>
