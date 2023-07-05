<section class="hero">
	<div class="container">
		<div class="row">
			<div class="col-md-6 hero__col hero__text">
				<?php if ( ! empty( $args['label'] ) ) : ?>
					<span class="badge badge-primary"><?php echo esc_html( $args['label'] ); ?></span>
				<?php endif; ?>

				<?php if ( ! empty( $args['title'] ) ) : ?>
					<h1 class="kadence-heading-xl"><?php echo esc_html( $args['title'] ); ?></h1>
				<?php endif; ?>

				<?php if ( ! empty( $args['text'] ) ) : ?>
					<p><?php echo wp_kses_post( $args['text'] ); ?></p>
				<?php endif; ?>

				<img src="<?php echo esc_url( get_template_directory_uri() ); ?>/img/contact-hero-photo.png">
			</div>
			<div class="col-md-6 hero__col hero__form">
				<?php if ( ! empty( $args['contact_form'] ) ) : ?>
					<div class="hero__form--wrapper">
						<?php
						if ( shortcode_exists( 'contact-form-7' ) ) {
							echo do_shortcode( $args['contact_form'] );
						}
						?>
					</div>
				<?php endif; ?>
			</div>
		</div>
	</div>
	<div class="fading-bg"></div>
</section>