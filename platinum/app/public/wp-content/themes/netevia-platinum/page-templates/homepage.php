<?php
// Template name: Netevia Home

$fields = get_fields();

get_header();

get_template_part( 'section-templates/home-hero', null, $fields['hero'] );
get_template_part( 'section-templates/home-solution', null, $fields['solution'] );
get_template_part( 'section-templates/home-why', null, $fields['why'] );

get_footer();
