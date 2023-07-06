<section class="pay-stack">
	<div class="container">
		<div class="pay-stack__content">
			<h2 class="pay-stack__title custom-title"><?php echo esc_html( $args['title'] ); ?></h2>
			<?php if ( ! empty( $args['features'] ) ) : ?>
			<div class="pay-stack__list">
				<div class="pay-stack__col">
					<?php
					$i = 1;
					foreach ( $args['features'] as $feature ) :
						if ( 5 === $i ) {
							?>
							</div>
							<div class="pay-stack__col">
							<?php
						}
						?>
						<div class="pay-stack__item wow fadeInUp" data-wow-delay="0.<?php echo esc_attr( $i ); ?>s">
							<div class="pay-stack__item--img"><img src="<?php echo esc_url( $feature['image'] ); ?>" alt=""></div>
							<div class="pay-stack__item--text"><?php echo esc_html( $feature['name'] ); ?></div>
						</div>
						<?php
						$i++;
					endforeach;
					?>
				</div>
			</div>
			<?php endif; ?>
		</div>
	</div>
	<div class="graph-lines graph-lines-1"> <img src="<?php echo esc_url( get_template_directory_uri() ); ?>/img/graph-lines-1.svg" alt=""></div>
	<div class="graph-lines graph-lines-2"> <img src="<?php echo esc_url( get_template_directory_uri() ); ?>/img/graph-lines-2.svg" alt=""></div>
</section>