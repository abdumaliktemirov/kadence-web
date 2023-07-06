<section class="insured">
		<div class="container"> 
		  <div class="insured__content"> 
			<div class="insured__img"><img src="<?php echo esc_url( get_template_directory_uri() ); ?>/img/insured-img.svg" alt=""></div>
			<div class="insured__info">
			  <div class="insured__title custom-title"><?php echo esc_html( $args['title'] ); ?></div>
			  <div class="insured__subtitle custom-subtitle"><?php echo wp_kses_post( nl2br( $args['text'] ) ); ?></div>
			</div>
		  </div>
		</div>
</section>
