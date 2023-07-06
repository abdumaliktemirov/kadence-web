<section class="services">
	<div class="container">
		<div class="services__content">
			<div class="services__main-title custom-title"><?php echo esc_html( $args['title'] ); ?></div>
			<div class="services__list">
				<div class="services__row">
					<div class="services__text">
						<div class="services__title custom-title"><?php echo esc_html( $args['service_name_1'] ); ?></div>
						<div class="services__subtitle custom-subtitle"><?php echo esc_html( $args['service_text_1'] ); ?></div>
					</div>
					<div class="services__img wow fadeInUp"><img src="<?php echo esc_url( get_template_directory_uri() ); ?>/img/service-1.svg" alt=""></div>
				</div>
				<div class="services__row">
					<div class="services__img wow fadeInUp"><img src="<?php echo esc_url( get_template_directory_uri() ); ?>/img/service-2.svg" alt=""></div>
					<div class="services__text">
						<div class="services__title custom-title"><?php echo esc_html( $args['service_name_2'] ); ?></div>
						<div class="services__subtitle custom-subtitle"><?php echo esc_html( $args['service_text_2'] ); ?></div>
					</div>
				</div>
				<div class="services__row">
					<div class="services__text">
						<div class="services__title custom-title"><?php echo esc_html( $args['service_name_3'] ); ?></div>
						<div class="services__subtitle custom-subtitle"><?php echo esc_html( $args['service_text_3'] ); ?></div>
					</div>
					<div class="services__img wow fadeInUp"><img src="<?php echo esc_url( get_template_directory_uri() ); ?>/img/service-3.svg" alt=""></div>
				</div>
			</div>
			<a href="<?php echo esc_url( $args['button']['url'] ); ?>" target="<?php echo esc_attr( $args['button']['target'] ); ?>" class="services__btn btn-ocean">
				<?php echo esc_html( $args['button']['title'] ); ?>
			</a>
		</div>
	</div>
</section>