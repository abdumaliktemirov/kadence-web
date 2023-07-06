<section class="phone">
	<div class="container"> 
		<?php if ( ! empty( $args['features'] ) ) : ?>
		<div class="phone__content">
			<div class="phone__left">
				<?php
				$i = 1;
				foreach ( $args['features'] as $data ) :
					if ( 4 === $i ) {
						?>
						</div>
						<div class="phone__img wow fadeInUp">
							<picture>
								<source srcset="<?php echo esc_url( get_template_directory_uri() ); ?>/img/phone-img.webp" type="image/webp">
								<img src="<?php echo esc_url( get_template_directory_uri() ); ?>/img/phone-img.png" alt="">
							</picture>
						</div>
						<div class="phone__right">
						<?php
					}
					?>
					<div class="phone__item">
						<div class="phone__item--icon"><img src="<?php echo esc_url( get_template_directory_uri() ); ?>/img/phone-<?php echo esc_attr( $i ); ?>.svg" alt=""></div>
						<div class="phone__item--text"><?php echo wp_kses_post( netevia_string_symbol_tag( $data['feature'], '**', 'i' ) ); ?></div>
					</div>
					<?php
					$i++;
				endforeach;
				?>
			</div>
		</div>
		<?php endif; ?>
	</div>
</section>