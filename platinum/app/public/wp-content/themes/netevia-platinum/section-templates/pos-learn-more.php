<section class="learn">
	<div class="learn__globus"><img src="<?php echo esc_url( get_template_directory_uri() ); ?>/img/globus.svg" alt=""></div>
	<div class="container"> 
		<div class="learn__content">
			<div class="learn__top custom-top-title"><?php echo esc_html( $args['headline'] ); ?></div>
			<div class="learn__title custom-title"><?php echo esc_html( $args['title'] ); ?></div>
			<div class="learn__subtitle custom-subtitle"><?php echo wp_kses_post( $args['text'] ); ?></div>
			<a href="<?php echo esc_url( $args['button']['url'] ); ?>" target="<?php echo esc_attr( $args['button']['target'] ); ?>" class="learn__btn btn-white">
				<?php echo esc_html( $args['button']['title'] ); ?>
			</a>
		</div>
	</div>
</section>