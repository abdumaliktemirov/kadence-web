<?php
// Template name: Netevia ISO banking

$fields = get_fields();

get_header();

get_template_part( 'section-templates/isob-hero', null, $fields['hero'] );
get_template_part( 'section-templates/isob-services', null, $fields['services'] );
get_template_part( 'section-templates/isob-maximize', null, $fields['maximize'] );
get_template_part( 'section-templates/isob-even-more', null, $fields['even_more'] );
get_template_part( 'section-templates/isob-fdic', null, $fields['fdic'] );
get_template_part( 'section-templates/isob-contact', null, $fields['contact'] );

get_footer();
