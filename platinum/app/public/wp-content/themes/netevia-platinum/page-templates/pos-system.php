<?php
// Template name: Netevia POS system

$fields = get_fields();

get_header();

get_template_part( 'section-templates/pos-hero', null, $fields['hero'] );
get_template_part( 'section-templates/pos-possibilities', null, $fields['possibilities'] );
get_template_part( 'section-templates/pos-terminals', null, $fields['terminals'] );
get_template_part( 'section-templates/pos-learn-more', null, $fields['learn_more'] );

get_footer();
