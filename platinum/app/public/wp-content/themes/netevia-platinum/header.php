<?php
/**
 * The header for our theme
 *
 * This is the template that displays all of the <head> section and everything up until <div id="content">
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package Netevia_Platinum
 */

$main_menu   = netevia_get_menu_array( 'primary-menu' );
$header_logo = get_template_directory_uri() . '/img/logo.svg';
$header_cta  = get_field( 'header_cta', 'option' );


if ( ! empty( get_field( 'header_logo', 'option' ) ) ) {
	$header_logo = get_field( 'header_logo', 'option' );
}
?>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<?php wp_head(); ?>
	</head>
	<body <?php body_class(); ?>> 
	<?php wp_body_open(); ?>
	<nav class="nav">
		<div class="container"> 
			<div class="nav__content"> 
			<div class="nav__brand">
				<a href="/">
					<img src="<?php echo esc_url( $header_logo ); ?>" alt="Logo">
				</a>
			</div>
			<div class="nav__menu">
				<?php if ( ! empty( $main_menu ) ) : ?>
				<ul class="nav__list"> 
					<?php foreach ( $main_menu as $menu_item ) : ?>
						<li class="nav__item"> 
							<?php if ( empty( $menu_item['children'] ) ) : ?>
								<a class="nav__link" href="<?php echo esc_url( $menu_item['url'] ); ?>"><?php echo esc_html( $menu_item['title'] ); ?></a>
							<?php else : ?>
								<div class="nav__link"><?php echo esc_html( $menu_item['title'] ); ?></div>
								<ul class="nav__item--content simple">
									<?php foreach ( $menu_item['children'] as $child ) : ?>
										<a href="<?php echo esc_url( $child['url'] ); ?>" class="nav__item--sub">
											<?php echo esc_html( $child['title'] ); ?>
										</a>
									<?php endforeach; ?>
								</ul>
							<?php endif; ?>
						</li>
					<?php endforeach; ?>
				</ul>
				<?php endif; ?>
			</div>
			<?php
			if ( ! empty( $header_cta['url'] ) && ! empty( $header_cta['title'] ) ) {
				?>
				<a href="<?php echo esc_url( $header_cta['url'] ); ?>" target="<?php echo esc_attr( $header_cta['target'] ); ?>" class="nav__btn">
					<?php echo esc_html( $header_cta['title'] ); ?>
				</a>
				<?php
			}
			?>
			<div class="nav__burger"><span></span></div>
			</div>
		</div>
		<div class="nav-mobile"> 
			<div class="nav-mobile__content"> 
				<?php if ( ! empty( $main_menu ) ) : ?>

					<?php foreach ( $main_menu as $menu_item ) : ?>

						<?php if ( empty( $menu_item['children'] ) ) : ?>

							<a href="<?php echo esc_url( $menu_item['url'] ); ?>" class="nav-mobile__item">
								<div class="nav-mobile__text no-children"><?php echo esc_html( $menu_item['title'] ); ?></div>
							</a>

						<?php else : ?>

							<div class="nav-mobile__item">
								<div class="nav-mobile__text"><?php echo esc_html( $menu_item['title'] ); ?></div>
								<div class="nav-mobile__contains">
									<?php foreach ( $menu_item['children'] as $child ) : ?>
										<a href="<?php echo esc_url( $child['url'] ); ?>" class="nav-mobile__link">
											<div class="nav-mobile__link--text"><?php echo esc_html( $child['title'] ); ?></div>
										</a>
									<?php endforeach; ?>
								</div>
							</div>

						<?php endif; ?>

					<?php endforeach; ?>

				<?php endif; ?>

				<?php
				if ( ! empty( $header_cta['url'] ) && ! empty( $header_cta['title'] ) ) {
					?>
					<div class="nav-mobile__btn-parent">
						<a href="<?php echo esc_url( $header_cta['url'] ); ?>" target="<?php echo esc_attr( $header_cta['target'] ); ?>" class="nav-mobile__btn btn-white">
							<?php echo esc_html( $header_cta['title'] ); ?>
						</a>
					</div>
					<?php
				}
				?>
			</div>
		</div>
	</nav>
