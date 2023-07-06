<section class="based"> 
	<div class="container"> 
		<div class="based__content">
			<div class="based__info">
				<div class="based__title custom-title"><?php echo esc_html( $args['title'] ); ?></div>
				<div class="based__subtitle custom-subtitle"><?php echo wp_kses_post( netevia_nl2p( $args['text'] ) ); ?></div>
			</div>
			<div class="based__img wow fadeInUp">
				<picture>
					<source srcset="<?php echo esc_url( get_template_directory_uri() ); ?>/img/based-img.webp" type="image/webp">
					<img src="<?php echo esc_url( get_template_directory_uri() ); ?>/img/based-img.png" alt="">
				</picture>
			</div>
		</div>
	</div>
</section>