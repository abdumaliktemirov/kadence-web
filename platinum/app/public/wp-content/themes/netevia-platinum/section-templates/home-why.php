<section class="why-we"> 
	<div class="container"> 
		<div class="why-we__content">
			<div class="why-we__top"><?php echo esc_html( $args['headline'] ); ?></div>
			<h2 class="why-we__title custom-title"><?php echo esc_html( $args['title'] ); ?></h2>
			<div class="why-we__subtitle custom-subtitle"><?php echo esc_html( $args['text'] ); ?></div>
			<div class="why-we__img wow fadeInUp">
				<picture>
					<source srcset="<?php echo esc_url( get_template_directory_uri() ); ?>/img/why-we-img.webp" type="image/webp">
					<img src="./img/why-we-img.png" alt="">
				</picture>
			</div>
		</div>
	</div>
</section>
<section class="ready"> 
	<div class="container">
		<div class="ready__top"><?php echo esc_html( $args['subheading'] ); ?></div>
		<div class="ready__title custom-title"><?php echo esc_html( $args['subtitle'] ); ?></div>
		<?php if ( ! empty( $args['features'] ) ) : ?>
			<div class="ready__list">
				<?php foreach ( $args['features'] as $feature ) : ?>
					<div class="ready__item wow fadeInUp">
						<div class="ready__item--img"><img src="<?php echo esc_url( $feature['image'] ); ?>" alt=""></div>
						<div class="ready__item--title"><?php echo esc_html( $feature['title'] ); ?></div>
						<div class="ready__item--subtitle"><?php echo esc_html( $feature['text'] ); ?></div>
						<a href="<?php echo esc_url( $feature['button']['url'] ); ?>" target="<?php echo esc_attr( $feature['button']['target'] ); ?>" class="ready__item--btn btn-ocean">
							<?php echo esc_html( $feature['button']['title'] ); ?>
						</a>
					</div>
				<?php endforeach; ?>
			</div>
		<?php endif; ?>
	</div>
</section>