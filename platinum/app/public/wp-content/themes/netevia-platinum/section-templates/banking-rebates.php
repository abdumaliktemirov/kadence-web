<section class="rebates">
	<div class="container">
		<div class="rebates__content">
			<div class="rebates__title custom-title"><?php echo esc_html( $args['title'] ); ?></div>
			<div class="rebates__subtitle custom-subtitle"><?php echo wp_kses_post( $args['text'] ); ?></div>
			<div class="rebates__box">
				<div class="rebates__box--title custom-title"><?php echo esc_html( $args['card_title'] ); ?></div>
				<div class="rebates__box--part">
					<p><?php echo wp_kses_post( netevia_string_symbol_tag( $args['card_text_1'], '**', 'span' ) ); ?></p>
				</div>
				<div class="rebates__box--part">
					<p><?php echo wp_kses_post( netevia_string_symbol_tag( $args['card_text_2'], '**', 'span' ) ); ?></p>
				</div>
				<div class="rebates__box--part">
					<p><?php echo wp_kses_post( netevia_string_symbol_tag( $args['card_text_3'], '**', 'span' ) ); ?></p>
				</div>
			</div>
			<div class="rebates__gallery">
				<div class="rebates__card wow fadeIn" data-wow-delay>
					<div class="rebates__card--img"><picture><source srcset="<?php echo esc_url( get_template_directory_uri() ); ?>/img/rebas-card-1.webp" type="image/webp"><img src="img/rebas-card-1.png" alt=""></picture></div>
					<div class="rebates__card--text"><?php echo wp_kses_post( netevia_nl2p( $args['photo_text_1'] ) ); ?></div>
				</div>
				<div class="rebates__card wow fadeIn" data-wow-delay="0.2s">
					<div class="rebates__card--img"><picture><source srcset="<?php echo esc_url( get_template_directory_uri() ); ?>/img/rebas-card-2.webp" type="image/webp"><img src="img/rebas-card-2.png" alt=""></picture></div>
					<div class="rebates__card--text"><?php echo wp_kses_post( netevia_nl2p( $args['photo_text_2'] ) ); ?></div>
				</div>
				<div class="rebates__card wow fadeIn" data-wow-delay="0.4s">
					<div class="rebates__card--img"><picture><source srcset="<?php echo esc_url( get_template_directory_uri() ); ?>/img/rebas-card-3.webp" type="image/webp"><img src="img/rebas-card-3.png" alt=""></picture></div>
					<div class="rebates__card--text"><?php echo wp_kses_post( netevia_nl2p( $args['photo_text_3'] ) ); ?></div>
				</div>
			</div>
			<div class="rebates__sub--text custom-title"><?php echo esc_html( $args['tagline'] ); ?></div>
			<div class="rebates__sub--text-blue"><?php echo wp_kses_post( $args['notice'] ); ?></div>
		</div>
	</div>
</section>