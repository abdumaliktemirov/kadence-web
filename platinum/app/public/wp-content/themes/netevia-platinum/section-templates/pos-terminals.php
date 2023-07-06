<section class="terminal">
	<div class="container"> 
		<div class="terminal__content">
			<div class="terminal__title custom-title"><?php echo esc_html( $args['title'] ); ?></div>
			<div class="terminal__subtitle custom-subtitle"><?php echo esc_html( $args['text'] ); ?></div>
			<div class="terminal__img wow fadeInUp"><picture><source srcset="<?php echo esc_url( get_template_directory_uri() ); ?>/img/terminal-img.webp" type="image/webp"><img src="<?php echo esc_url( get_template_directory_uri() ); ?>/img/terminal-img.png" alt=""></picture></div>
		</div>
	</div>
</section>