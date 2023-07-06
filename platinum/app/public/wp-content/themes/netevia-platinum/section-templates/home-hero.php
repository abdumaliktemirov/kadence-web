<section class="payment-tec"> 
	<div class="container"> 
		<div class="payment-tec__content"> 
			<h2 class="payment-tec__title"><?php echo esc_html( $args['title'] ); ?></h2>
		<div class="payment-tec__subtitle"><?php echo esc_html( $args['text'] ); ?></div>
		<div class="payment-tec__img wow fadeInUp"><picture><source srcset="<?php echo esc_url( get_template_directory_uri() ); ?>/img/payment-tec-img.webp" type="image/webp"><img src="<?php echo esc_url( get_template_directory_uri() ); ?>/img/payment-tec-img.png" alt=""></picture></div>
		</div>
	</div>
</section>
<section class="home-useful">
	<div class="container"> 
		<?php if ( ! empty( $args['features'] ) ) : ?>
		<div class="home-useful__list">
			<?php foreach ( $args['features'] as $feature ) : ?>
				<div class="home-useful__item">
					<div class="home-useful__img"><img src="<?php echo esc_html( $feature['image'] ); ?>" alt=""></div>
					<div class="home-useful__text">
						<h3 class="home-useful__title"><?php echo esc_html( $feature['title'] ); ?></h3>
						<p class="home-useful__subtitle"><?php echo esc_html( $feature['text'] ); ?></p>
					</div>
				</div>
			<?php endforeach; ?>
		</div>
		<?php endif; ?>
	</div>
</section>