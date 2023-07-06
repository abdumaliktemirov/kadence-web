<?php
// Template name: Netevia Banking

$fields = get_fields();

get_header();

get_template_part( 'section-templates/banking-hero', null, $fields['hero'] );
get_template_part( 'section-templates/banking-flip-cards', null, $fields['flip_cards'] );
get_template_part( 'section-templates/banking-mobile', null, $fields['mobile'] );
get_template_part( 'section-templates/banking-fees', null, $fields['fees'] );
get_template_part( 'section-templates/banking-card', null, $fields['card'] );
get_template_part( 'section-templates/banking-rebates', null, $fields['rebates'] );

get_footer();
