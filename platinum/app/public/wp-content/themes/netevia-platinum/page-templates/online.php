<?php
// Template name: Netevia Online payments

$fields = get_fields();

get_header();

get_template_part( 'section-templates/online-hero', null, $fields['hero'] );
get_template_part( 'section-templates/online-everything', null, $fields['everything'] );
get_template_part( 'section-templates/online-time-money', null, $fields['time_money'] );
get_template_part( 'section-templates/online-get-started', null, $fields['get_started'] );
get_template_part( 'section-templates/online-integration', null, $fields['integration'] );
get_template_part( 'section-templates/online-coverage', null, $fields['coverage'] );

get_footer();
