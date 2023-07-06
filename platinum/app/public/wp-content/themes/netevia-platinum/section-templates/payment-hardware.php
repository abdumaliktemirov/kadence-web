<section class="hand-off">
	<div class="container"> 
		<div class="hand-off__content"> 
			<h2 class="hand-off__title custom-title"><?php echo esc_html( $args['title'] ); ?></h2>
			<div class="hand-off__subtitle custom-subtitle"><?php echo esc_html( $args['text'] ); ?></div>
			<div class="hand-off__img wow fadeInUp"> <picture><source srcset="<?php echo esc_url( get_template_directory_uri() ); ?>/img/hand-off-img.webp" type="image/webp"><img src="<?php echo esc_url( get_template_directory_uri() ); ?>/img/hand-off-img.png" alt=""></picture></div>
		</div>
	</div>
</section>