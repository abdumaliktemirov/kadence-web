<section class="get-day">
	<div class="container"> 
		<div class="get-day__content">
			<div class="get-day__img wow fadeInUp">
				<picture>
					<source srcset="<?php echo esc_url( get_template_directory_uri() ); ?>/img/get-day-img.webp" type="image/webp">
					<img src="<?php echo esc_url( get_template_directory_uri() ); ?>/img/get-day-img.png" alt="">
				</picture>
			</div>
			<div class="get-day__text">
				<div class="get-day__top custom-top-title"><?php echo esc_html( $args['headline'] ); ?></div>
				<div class="get-day__title custom-title"><?php echo esc_html( $args['title'] ); ?></div>
				<?php if ( ! empty( $args['features'] ) ) : ?>
				<ul class="get-day__subtitle custom-subtitle">
					<?php foreach ( $args['features'] as $data ) : ?>
						<li><?php echo esc_html( $data['feature'] ); ?></li>
					<?php endforeach; ?>
				</ul>
				<?php endif; ?>
			</div>
		</div>
	</div>
	<div class="blob"> <img src="<?php echo esc_url( get_template_directory_uri() ); ?>/img/blob.svg" alt=""></div>
</section>