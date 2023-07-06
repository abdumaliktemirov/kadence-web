<section class="credit-card">
	<div class="container"> 
		<div class="credit-card__subtitle custom-subtitle"><?php echo esc_html( $args['headline'] ); ?></div>
		<div class="credit-card__title custom-title"><?php echo esc_html( $args['title'] ); ?></div>
		<?php if ( ! empty( $args['plans'] ) ) : ?>
		<div class="credit-card__box"> 
			<?php
			$side = 'left';
			foreach ( $args['plans'] as $plan ) :
				?>
				<div class="credit-card__box--<?php echo esc_attr( $side ); ?>">
					<div class="credit-card__box--title"><?php echo esc_html( $plan['name'] ); ?></div>
					<?php if ( ! empty( $plan['features'] ) ) : ?>
					<ul class="credit-card__box--list">
						<?php foreach ( $plan['features'] as $data ) : ?>
							<li><?php echo esc_html( $data['feature'] ); ?></li>
						<?php endforeach; ?>
					</ul>
					<?php endif; ?>
				</div>
				<?php
				if ( 'left' === $side ) {
					$side = 'right';
				}
			endforeach;
			?>
		<?php endif; ?>
		<div class="credit-card__process-1"> <img src="<?php echo esc_url( get_template_directory_uri() ); ?>/img/credit-card-process-1.svg" alt=""></div>
		<div class="credit-card__process-2"> <img src="<?php echo esc_url( get_template_directory_uri() ); ?>/img/credit-card-process-2.svg" alt=""></div>
		</div>
	</div>
</section>




