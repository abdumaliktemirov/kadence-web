<section class="possible">
	<div class="container">
		<div class="possible__content">
			<h2 class="possible__title custom-title"><?php echo esc_html( $args['title'] ); ?></h2>
		<div class="possible__subtitle custom-subtitle"><?php echo wp_kses_post( nl2br( $args['text'] ) ); ?></div>
		</div>
		<?php if ( ! empty( $args['brands'] ) ) : ?>
		<div class="possible__list">
			<?php foreach ( $args['brands'] as $brand ) : ?>
				<div class="possible__item">
					<div class="possible__item--img"><img src="<?php echo esc_url( $brand['image'] ); ?>" alt=""></div>
					<div class="possible__item--text"><?php echo wp_kses_post( nl2br( $brand['text'] ) ); ?></div>
				</div>
			<?php endforeach; ?>
		</div>
		<?php endif; ?>
	</div>
</section>