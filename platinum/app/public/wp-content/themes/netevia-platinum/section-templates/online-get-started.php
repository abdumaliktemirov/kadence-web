<section class="start-quick"> 
	<div class="container">
		<div class="start-quick__content">
			<div class="start-quick__top custom-top-title"><?php echo esc_html( $args['headline'] ); ?></div>
			<div class="start-quick__title custom-title"><?php echo esc_html( $args['title'] ); ?></div>
			<div class="start-quick__subtitle custom-subtitle"><?php echo wp_kses_post( nl2br( $args['text'] ) ); ?></div>
			<a href="<?php echo esc_url( $args['button']['url'] ); ?>" target="<?php echo esc_attr( $args['button']['target'] ); ?>" class="start-quick__btn btn-white">
				<?php echo esc_html( $args['button']['title'] ); ?>
			</a>
		</div>
	</div>
</section>