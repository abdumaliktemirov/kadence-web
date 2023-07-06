<section class="available">
	<div class="container">
		<div class="available__content">
			<div class="available__row available__row-1">
				<div class="available__img wow fadeInUp"><picture><source srcset="<?php echo esc_url( get_template_directory_uri() ); ?>/img/available-1.webp" type="image/webp"><img src="<?php echo esc_url( get_template_directory_uri() ); ?>/img/available-1.png" alt=""></picture></div>
				<div class="available__info">
					<div class="available__title custom-title"><?php echo esc_html( $args['title_1'] ); ?></div>
					<div class="available__subtitle custom-subtitle"><?php echo esc_html( $args['text_1'] ); ?></div>
					<a href="<?php echo esc_url( $args['button_1']['url'] ); ?>" target="<?php echo esc_attr( $args['button_1']['target'] ); ?>" class="available__btn btn-ocean">
						<?php echo esc_html( $args['button_1']['title'] ); ?>
					</a>
				</div>
			</div>
			<div class="available__row available__row-2">
				<div class="available__info">
					<div class="available__title custom-title"><?php echo esc_html( $args['title_2'] ); ?></div>
					<div class="available__subtitle custom-subtitle"><?php echo esc_html( $args['text_2'] ); ?></div>
					<a href="<?php echo esc_url( $args['button_2']['url'] ); ?>" target="<?php echo esc_attr( $args['button_2']['target'] ); ?>" class="available__btn btn-ocean">
						<?php echo esc_html( $args['button_2']['title'] ); ?>
					</a>
				</div>
				<div class="available__img wow fadeInUp"><picture><source srcset="<?php echo esc_url( get_template_directory_uri() ); ?>/img/available-2.webp" type="image/webp"><img src="<?php echo esc_url( get_template_directory_uri() ); ?>/img/available-2.png" alt=""></picture></div>
			</div>
		</div>
	</div>
</section>