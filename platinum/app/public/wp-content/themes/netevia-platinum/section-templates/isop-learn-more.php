<section class="guide">
	<div class="container">
		<div class="guide__content">
			<div class="guide__top custom-top-title"><?php echo esc_html( $args['headline'] ); ?></div>
			<div class="guide__title custom-title"><?php echo esc_html( $args['title'] ); ?></div>
			<div class="guide__subtitle custom-subtitle"><?php echo wp_kses_post( nl2br( $args['text'] ) ); ?></div>
			<a href="<?php echo esc_url( $args['button']['url'] ); ?>" target="<?php echo esc_attr( $args['button']['target'] ); ?>" class="guide__btn btn-white">
				<?php echo esc_html( $args['button']['title'] ); ?>
			</a>
		</div>
	</div>
	<div class="integrate__global"> <img src="<?php echo esc_url( get_template_directory_uri() ); ?>/img/globus.svg" alt=""></div>
</section>