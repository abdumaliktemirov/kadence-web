<section class="contract"> 
	<div class="container"> 
		<div class="contract__content">
			<div class="contract__left"> 
				<div class="contract__col--top custom-top-title"><?php echo esc_html( $args['headline'] ); ?></div>
				<div class="contract__col--title custom-title"><?php echo esc_html( $args['title'] ); ?></div>
				<div class="contract__col--subtitle custom-subtitle"><?php echo wp_kses_post( nl2br( $args['text'] ) ); ?></div>
				<div class="contract__col--img wow fadeInUp"><picture><source srcset="<?php echo esc_url( get_template_directory_uri() ); ?>/img/contract-img.webp" type="image/webp"><img src="<?php echo esc_url( get_template_directory_uri() ); ?>/img/contract-img.png" alt=""></picture></div>
			</div>
			<div class="contract__right">
				<div class="contract__col--title custom-title"><?php echo esc_html( $args['subtitle'] ); ?></div>
				<div class="contract__col--subtitle custom-subtitle"><?php echo wp_kses_post( nl2br( $args['subtext'] ) ); ?></div>
			</div>
		</div>
	</div>
</section>