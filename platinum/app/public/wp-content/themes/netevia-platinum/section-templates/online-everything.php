<section class="needing-sm"> 
	<div class="container">
		<div class="needing-sm__content"> 
			<div class="needing-sm__top custom-top-title"><?php echo esc_html( $args['headline'] ); ?></div>
			<h2 class="needing-sm__title custom-title"><?php echo esc_html( $args['title'] ); ?></h2>
			<div class="needing-sm__subtitle custom-subtitle"><?php echo wp_kses_post( nl2br( $args['text'] ) ); ?></div>
		</div>
	</div>
</section>