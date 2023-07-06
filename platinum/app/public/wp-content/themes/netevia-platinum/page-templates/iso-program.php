<?php
// Template name: Netevia ISO program

$fields = get_fields();

get_header();

?>
<div class="sections-iso-program">
	<?php
	get_template_part( 'section-templates/isop-hero', null, $fields['hero'] );
	get_template_part( 'section-templates/isop-partnership-features', null, $fields['partnership_features'] );
	get_template_part( 'section-templates/isop-learn-more', null, $fields['learn_more'] );
	get_template_part( 'section-templates/isop-benifits', null, $fields['benifits'] );
	get_template_part( 'section-templates/isop-financing', null, $fields['financing'] );
	?>
</div>
<?php

get_footer();
