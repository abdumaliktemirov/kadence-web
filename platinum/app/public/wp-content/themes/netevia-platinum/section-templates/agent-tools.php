<section class="tools"> 
	<div class="container"> 
		<div class="tools__content"> 
			<div class="tools__info">
				<div class="tools__title custom-title"><?php echo esc_html( $args['title'] ); ?></div>
				<div class="tools__subtitle custom-subtitle"><?php echo wp_kses_post( nl2br( $args['text'] ) ); ?></div>
			</div>
			<div class="tools__img wow fadeInUp">
				<picture>
					<source srcset="<?php echo esc_url( get_template_directory_uri() ); ?>/img/tools-img.webp" type="image/webp">
					<img src="<?php echo esc_url( get_template_directory_uri() ); ?>/img/tools-img.png" alt="">
				</picture>
			</div>
		</div>
	</div>
</section>