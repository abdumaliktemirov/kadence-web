<section class="built">
	<div class="container"> 
		<div class="built__content"> 
			<div class="built__title custom-title"><?php echo esc_html( $args['title'] ); ?></div>
			<div class="built__subtitle custom-subtitle"><?php echo wp_kses_post( netevia_nl2p( $args['text'] ) ); ?></div>
			<div class="built__img wow fadeInUp">
				<picture>
					<source srcset="<?php echo esc_url( get_template_directory_uri() ); ?>/img/built-img.webp" type="image/webp">
					<img src="<?php echo esc_url( get_template_directory_uri() ); ?>/img/built-img.png" alt="">
				</picture>
			</div>
		</div>
	</div>
</section>