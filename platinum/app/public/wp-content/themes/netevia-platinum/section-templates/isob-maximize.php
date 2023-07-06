<section class="maximize"> 
	<div class="container"> 
		<div class="maximize__title custom-title"><?php echo esc_html( $args['slogan'] ); ?></div>
	</div>
</section>
<section class="deals">
	<div class="container">
		<div class="deals__content"> 
			<div class="deals__top custom-top-title"><?php echo esc_html( $args['headline'] ); ?></div>
			<div class="deals__title custom-title"><?php echo esc_html( $args['title'] ); ?></div>
			<div class="deals__subtitle custom-subtitle"><?php echo esc_html( $args['text'] ); ?></div>
			<div class="deals__box"> 
				<div class="deals__left">
					<img src="<?php echo esc_url( get_template_directory_uri() ); ?>/img/deals-1.svg" alt="">
					<div class="deals__text"><?php echo esc_html( $args['left'] ); ?></div>
				</div>
				<div class="deals__right">
					<img src="<?php echo esc_url( get_template_directory_uri() ); ?>/img/deals-2.svg" alt="">
					<div class="deals__text"><?php echo esc_html( $args['right'] ); ?></div>
				</div>
			</div>
			<div class="deals__bottom"><?php echo esc_html( $args['notice'] ); ?></div>
		</div>
	</div>
</section>