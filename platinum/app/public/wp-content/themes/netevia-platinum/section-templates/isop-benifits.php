<section class="partnership">
	<div class="container">
		<div class="partnership__content">
			<div class="partnership__row partnership__row-1">
				<div class="partnership__img wow fadeInUp">
					<picture>
						<source srcset="<?php echo esc_url( get_template_directory_uri() ); ?>/img/partnership-1.webp" type="image/webp">
						<img src="<?php echo esc_url( get_template_directory_uri() ); ?>/img/partnership-1.png" alt="">
					</picture>
				</div>
				<div class="partnership__list"> 
					<div class="partnership__title custom-title"><?php echo esc_html( $args['title'] ); ?></div>
					<?php if ( ! empty( $args['benifits'] ) ) : ?>
					<div class="partnership__items">
						<?php foreach ( $args['benifits'] as $data ) : ?>
						<div class="partnership__thing">
							<div class="partnership__thing--icon">
								<svg xmlns="http://www.w3.org/2000/svg" width="18" height="14" viewbox="0 0 18 14" fill="none">
								<path d="M5.6 10.6L1.4 6.4L0 7.8L5.6 13.4L17.6 1.4L16.2 0L5.6 10.6Z" fill="#72C7F0"></path>
								</svg>
							</div>
							<div class="partnership__thing--text"><?php echo wp_kses_post( nl2br( $data['benifit'] ) ); ?></div>
						</div>
						<?php endforeach; ?>
					</div>
					<?php endif; ?>
				</div>
			</div>
			<div class="partnership__row partnership__row-2">
				<div class="partnership__data">
				<div class="partnership__title custom-title"><?php echo esc_html( $args['subtitle'] ); ?></div>
				<div class="partnership__subtitle custom-subtitle"><?php echo wp_kses_post( nl2br( $args['text'] ) ); ?></div>
				</div>
				<div class="partnership__img wow fadeInUp">
					<picture>
						<source srcset="<?php echo esc_url( get_template_directory_uri() ); ?>/img/partnership-2.webp" type="image/webp">
						<img src="<?php echo esc_url( get_template_directory_uri() ); ?>/img/partnership-2.png" alt="">
					</picture>
				</div>
			</div>
		</div>
	</div>
</section>