<section class="agents">
	<div class="agents__img">
		<img src="<?php echo esc_url( get_template_directory_uri() ); ?>/img/agents-bg-rocket.svg" alt="">
	</div>
	<div class="container"> 
		<div class="agents__content"> 
			<div class="agents__row agents__row-1">
				<div class="agents__title custom-title"><?php echo esc_html( $args['title_1'] ); ?></div>
				<div class="agents__subtitle custom-subtitle"><?php echo wp_kses_post( nl2br( $args['text_1'] ) ); ?></div>
			</div>
			<div class="agents__row agents__row-2">
				<div class="agents__title custom-title"><?php echo esc_html( $args['title_2'] ); ?></div>
				<div class="agents__subtitle custom-subtitle"><?php echo wp_kses_post( nl2br( $args['text_2'] ) ); ?></div>
			</div>
		</div>
	</div>
</section>