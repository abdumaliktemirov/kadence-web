<section class="integrate"> 
	<div class="integrate__global"> <img src="<?php echo esc_url( get_template_directory_uri() ); ?>/img/globus.svg" alt=""></div>
	<div class="container">
		<div class="integrate__top">
			<div class="integrate__title custom-title"><?php echo esc_html( $args['title'] ); ?></div>
			<div class="integrate__subtitle custom-subtitle"><?php echo wp_kses_post( nl2br( $args['text'] ) ); ?></div>
		</div>
		<div class="integrate__img">
			<picture>
				<source srcset="<?php echo esc_url( get_template_directory_uri() ); ?>/img/integrate-img.webp" type="image/webp">
				<img src="<?php echo esc_url( get_template_directory_uri() ); ?>/img/integrate-img.png" alt="">
			</picture>
		</div>
		<div class="integrate__bottom">
			<div class="integrate__title custom-title"><?php echo esc_html( $args['subtitle'] ); ?></div>
			<div class="integrate__subtitle custom-subtitle"><?php echo wp_kses_post( nl2br( $args['subtext'] ) ); ?></div>
		</div>
	</div>
</section>