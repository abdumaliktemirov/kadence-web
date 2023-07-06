<section class="needing">
	<div class="container"> 
		<div class="needing__content">
			<div class="needing__top custom-top-title"><?php echo esc_html( $args['headline'] ); ?></div>
			<h2 class="needing__title custom-title"><?php echo esc_html( $args['title'] ); ?></h2>
			<div class="needing__subtitle custom-subtitle"><?php echo esc_html( $args['text'] ); ?></div>
		</div>
	</div>
    <div class="needing__img wow fadeInUp"> <picture><source srcset="<?php echo esc_url( get_template_directory_uri() ); ?>/img/needing-img.webp" type="image/webp"><img src="<?php echo esc_url( get_template_directory_uri() ); ?>/img/needing-img.png" alt=""></picture></div>
</section>