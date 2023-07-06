<?php
// Template name: Netevia Agent program

$fields = get_fields();

get_header();

get_template_part( 'section-templates/agent-hero', null, $fields['hero'] );
get_template_part( 'section-templates/agent-rocket', null, $fields['rocket'] );
get_template_part( 'section-templates/agent-download', null, $fields['download'] );
get_template_part( 'section-templates/agent-tools', null, $fields['tools'] );
get_template_part( 'section-templates/agent-hq', null, $fields['hq'] );
get_template_part( 'section-templates/agent-financing', null, $fields['financing'] );

get_footer();
