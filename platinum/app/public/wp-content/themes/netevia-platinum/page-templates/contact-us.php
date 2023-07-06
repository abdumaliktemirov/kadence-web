<?php
// Template name: Netevia Contact us

$fields = get_fields();

get_header();

?>
<section class="contact-us">
	<div class="container">
		<div class="contact-us__content">
			<div class="contact-us__title custom-title"><?php echo esc_html( $fields['title'] ); ?></div>
			<?php echo do_shortcode( $fields['contact_form_shortcode'] ); ?>
		</div>
	</div>
</section>
<?php

get_footer();
