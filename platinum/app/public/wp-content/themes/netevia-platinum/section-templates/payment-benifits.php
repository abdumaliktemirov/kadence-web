<section class="benefits">
	<div class="container"> 
		<div class="benefits__content">
			<div class="benefits__title custom-title"><?php echo esc_html( $args['title'] ); ?></div>
			<div class="benefits__items">
				<?php if ( ! empty( $args['benifits'] ) ) : ?>
				<ul class="benefits__list benefits__list--col-1">
					<?php
					$i = 1;
					foreach ( $args['benifits'] as $data ) :
						if ( 5 === $i ) {
							?>
							</ul>
							<ul class="benefits__list benefits__list--col-2">
							<?php
						}
						?>
						<li class="benefits__item">
							<div class="benefits__item--num"><?php echo esc_html( $i ); ?></div>
							<div class="benefits__item--text">
								<?php echo wp_kses_post( netevia_nl2p( $data['benifit'] ) ); ?>
							</div>
						</li>
						<?php
						$i++;
					endforeach;
					?>
				</ul>
				<?php endif; ?>
			</div>
		</div>
	</div>
	<div class="graph-lines graph-lines-1"> <img src="<?php echo esc_url( get_template_directory_uri() ); ?>/img/graph-lines-1.svg" alt=""></div>
	<div class="graph-lines graph-lines-2"> <img src="<?php echo esc_url( get_template_directory_uri() ); ?>/img/graph-lines-2.svg" alt=""></div>
</section>