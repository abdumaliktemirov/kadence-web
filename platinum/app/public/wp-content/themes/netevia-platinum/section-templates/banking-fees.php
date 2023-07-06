<section class="no-fee">
	<div class="container">
		<div class="no-fee__content">
			<div class="no-fee__title custom-title"><?php echo esc_html( $args['title'] ); ?></div>

			<div class="no-fee__img wow fadeInUp">
				<picture>
					<source srcset="<?php echo esc_url( get_template_directory_uri() ); ?>/img/no-fee-img.webp" type="image/webp">
					<img src="<?php echo esc_url( get_template_directory_uri() ); ?>/img/no-fee-img.png" alt="">
				</picture>
			</div>

			<?php if ( ! empty( $args['fees'] ) ) : ?>
			<div class="no-fee__status">
				<?php foreach ( $args['fees'] as $data ) : ?>
					<div class="no-fee__item">
						<div class="no-fee__item--count">0</div>
						<div class="no-fee__item--text"><?php echo esc_html( $data['fee'] ); ?></div>
					</div>
				<?php endforeach; ?>
			</div>
			<?php endif; ?>
		</div>
	</div>
</section>