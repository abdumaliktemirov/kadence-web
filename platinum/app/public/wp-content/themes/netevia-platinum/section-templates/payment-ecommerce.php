<section class="ecommerce"> 
	<div class="container"> 
		<div class="ecommerce__content ecommerce__content--col-1">
			<h2 class="ecommerce__title custom-title"><?php echo esc_html( $args['title'] ); ?></h2>
			<div class="ecommerce__subtitle custom-subtitle"><?php echo esc_html( $args['text'] ); ?></div>
			<div class="ecommerce__img wow fadeInUp"><picture><source srcset="<?php echo esc_url( get_template_directory_uri() ); ?>/img/ecommerce-img.webp" type="image/webp"><img src="<?php echo esc_url( get_template_directory_uri() ); ?>/img/ecommerce-img.png" alt=""></picture></div>
		</div>
		<div class="ecommerce__content ecommerce__content--col-2">
			<h2 class="ecommerce__title custom-title"><?php echo esc_html( $args['subtitle'] ); ?></h2>
			<div class="ecommerce__subtitle custom-subtitle"><?php echo esc_html( $args['subtext'] ); ?></div>
			<div class="ecommerce__img wow fadeInUp"><picture><source srcset="<?php echo esc_url( get_template_directory_uri() ); ?>/img/ecommerce-img-2.webp" type="image/webp"><img src="<?php echo esc_url( get_template_directory_uri() ); ?>/img/ecommerce-img-2.png" alt=""></picture></div>
		</div>
	</div>
</section>