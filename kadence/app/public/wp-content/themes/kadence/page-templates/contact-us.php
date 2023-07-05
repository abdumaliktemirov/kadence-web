<?php
/**
 * Template name: Kadence - Contact us
 */

get_header();

$fields = get_fields();

?>
<main class="site-main kadence-page-contact-us">
	<?php
	get_template_part( 'section-templates/contact-hero', null, $fields['hero'] );
	get_template_part( 'section-templates/contact-lets-talk', null, $fields['lets_talk'] );
	get_template_part( 'section-templates/contact-where-we', null, $fields['where_we_are'] );
	get_template_part( 'section-templates/contact-book-demo', null, $fields['book_demo'] );
	?>
</main>
<?php

get_footer();
