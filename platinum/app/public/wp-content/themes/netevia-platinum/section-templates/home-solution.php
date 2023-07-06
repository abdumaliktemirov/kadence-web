<section class="answer-prob">
	<div class="container"> 
		<div class="answer-prob__content"> 
			<div class="answer-prob__top"><?php echo esc_html( $args['headline'] ); ?></div>
			<h2 class="answer-prob__title custom-title"><?php echo esc_html( $args['title'] ); ?></h2>
			<div class="answer-prob__subtitle custom-subtitle"><?php echo esc_html( $args['text'] ); ?></div>
			<a href="<?php echo esc_url( $args['button']['url'] ); ?>" target="<?php echo esc_attr( $args['button']['target'] ); ?>" class="answer-prob__btn btn-white">
				<?php echo esc_html( $args['button']['title'] ); ?>
			</a>
			<div class="answer-prob__img wow fadeInUp">
				<picture>
					<source srcset="<?php echo esc_url( get_template_directory_uri() ); ?>/img/answer-prob-img.webp" type="image/webp">
					<img src="/<?php echo esc_url( get_template_directory_uri() ); ?>img/answer-prob-img.png" alt="">
				</picture>
			</div>
		</div>
	</div>
</section>