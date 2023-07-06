<section class="contact-us">
	<div class="container">
		<div class="contact-us__content">
			<div class="contact-us__title custom-title"><?php echo esc_html( $args['title'] ); ?></div>
			<?php echo do_shortcode( $args['contact_form_shortcode'] ); ?>
		</div>
	</div>
</section>