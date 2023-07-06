<section class="flexible">
	<div class="container"> 
		<div class="flexible__content">
			<h2 class="flexible__title custom-title"><?php echo esc_html( $args['title'] ); ?></h2>
		<div class="flexible__subtitle custom-subtitle"><?php echo esc_html( $args['text'] ); ?></div>
		</div>
		<div class="flexible__box">
			<div class="flexible__box--title custom-title"><?php echo esc_html( $args['name'] ); ?></div>
			<?php if ( ! empty( $args['features'] ) ) : ?>
				<div class="flexible__box--list">
					<?php
					$i = 1;
					foreach ( $args['features'] as $feature ) :
						?>
						<div class="flexible__box--item wow fadeIn" data-wow-delay="0.<?php echo esc_attr( $i ); ?>s">
							<div class="flexible__box--item-img"><img src="<?php echo esc_url( $feature['image'] ); ?>" alt=""></div>
							<div class="flexible__box--item-text"><?php echo esc_html( $feature['text'] ); ?></div>
						</div>
						<?php
						$i++;
					endforeach;
					?>
				</div>
			<?php endif; ?>
		</div>
	</div>
</section>