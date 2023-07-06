<section class="intro"> 
	<div class="container"> 
		<div class="intro__content"> 
			<h2 class="intro__title custom-title"><?php echo esc_html( $args['title'] ); ?></h2>
			<div class="intro__subtitle custom-subtitle"><?php echo esc_html( $args['text'] ); ?></div>
			<a href="<?php echo esc_url( $args['button']['url'] ); ?>" target="<?php echo esc_attr( $args['button']['target'] ); ?>" class="intro__btn btn-ocean">
				<?php echo esc_html( $args['button']['title'] ); ?>
			</a>
		</div>
		<div class="intro__img wow fadeInUp"><picture><source srcset="<?php echo esc_url( get_template_directory_uri() ); ?>/img/intro-img.webp" type="image/webp"><img src="<?php echo esc_url( get_template_directory_uri() ); ?>/img/intro-img.png" alt=""></picture></div>
	</div>
</section>
<section class="customize"> 
	<div class="container"> 
		<div class="customize__content">
			<h2 class="customize__title custom-title"><?php echo esc_html( $args['subtitle'] ); ?></h2>
			<div class="customize__subtitle custom-subtitle"><?php echo esc_html( $args['subtext'] ); ?></div>
			<div class="customize__img wow fadeInUp"><picture><source srcset="<?php echo esc_url( get_template_directory_uri() ); ?>/img/customize-img.webp" type="image/webp"><img src="<?php echo esc_url( get_template_directory_uri() ); ?>/img/customize-img.png" alt=""></picture></div>
		</div>
	</div>
</section>