<section class="intro">
	<div class="container"> 
		<div class="intro__content"> 
			<h2 class="intro__title custom-title"><?php echo esc_html( $args['title'] ); ?></h2>
			<div class="intro__subtitle custom-subtitle"><?php echo esc_html( $args['text'] ); ?></div>
			<a href="<?php echo esc_url( $args['button']['url'] ); ?>" target="<?php echo esc_attr( $args['button']['target'] ); ?>" class="intro__btn btn-ocean">
				<?php echo esc_html( $args['button']['title'] ); ?>
			</a>
		</div>
		<div class="intro__img wow fadeInUp">
			<picture><source srcset="<?php echo esc_url( get_template_directory_uri() ); ?>/img/online-pay-img.webp" type="image/webp"><img src="<?php echo esc_url( get_template_directory_uri() ); ?>/img/online-pay-img.png" alt=""></picture>
		</div>
	</div>
</section>