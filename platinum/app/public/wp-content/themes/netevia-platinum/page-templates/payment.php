<?php
// Template name: Netevia Payment

$fields = get_fields();

get_header();

get_template_part( 'section-templates/payment-hero', null, $fields['hero'] );
get_template_part( 'section-templates/payment-pos', null, $fields['pos'] );
get_template_part( 'section-templates/payment-hardware', null, $fields['hardware'] );
get_template_part( 'section-templates/payment-plans', null, $fields['plans'] );
get_template_part( 'section-templates/payment-benifits', null, $fields['benifits'] );
get_template_part( 'section-templates/payment-ecommerce', null, $fields['ecommerce'] );

get_footer();
