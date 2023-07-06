<?php
/**
 * The template for displaying the footer
 *
 * Contains the closing of the #content div and all content after.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package Netevia_Platinum
 */

$footer_menu = netevia_get_menu_array( 'footer-menu' );
$bottom_menu = netevia_get_menu_array( 'bottom-menu' );
$footer_logo = get_template_directory_uri() . '/img/logo-footer.svg';
$copyright   = get_field( 'footer_copyright', 'option' );
$trademarks  = get_field( 'trademarks', 'option' );
$facebook    = get_field( 'facebook', 'option' );
$instagram   = get_field( 'instagram', 'option' );
$twitter     = get_field( 'twitter', 'option' );

if ( ! empty( get_field( 'footer_logo', 'option' ) ) ) {
	$footer_logo = get_field( 'footer_logo', 'option' );
}
?>
	<div class="footer">
		<div class="container">
			<div class="footer__top">
				<div class="footer__logo">
					<a href="/">
						<img src="<?php echo esc_url( $footer_logo ); ?>" alt="Footer logo">
					</a>
				</div>

				<?php if ( ! empty( $footer_menu ) ) : ?>
					<ul class="footer__menu">
						<?php foreach ( $footer_menu as $menu_item ) : ?>
							<li class="footer__item">
								<a href="<?php echo esc_url( $menu_item['url'] ); ?>" class="footer__link">
									<?php echo esc_html( $menu_item['title'] ); ?>
								</a>
							</li>
						<?php endforeach; ?>
					</ul>
				<?php endif; ?>
				
				<div class="footer__social">
					<?php if ( ! empty( $facebook ) ) : ?>
						<a href="<?php echo esc_url( $facebook ); ?>" target="_blank" class="footer__social--fb">
							<svg xmlns="http://www.w3.org/2000/svg" width="21" height="20" viewbox="0 0 21 20" fill="none">
								<path fill-rule="evenodd" clip-rule="evenodd" d="M18.4096 0H2.44286C1.34059 0 0.447021 0.89543 0.447021 2V18C0.447021 19.1046 1.34059 20 2.44286 20H10.4262V12.4706H7.43248V9.64706H10.4262V8.13082C10.4262 5.26024 11.9128 4 14.343 4C15.484 4 16.0979 4.08142 16.3962 4.12097L16.4137 4.12329V6.82353H14.7562C13.7246 6.82353 13.4199 7.35812 13.4199 8.44047V9.64706H16.3878L15.9775 12.4706H13.4199V20H18.4096C19.5118 20 20.4054 19.1046 20.4054 18V2C20.4054 0.89543 19.5118 0 18.4096 0Z" fill="white" fill-opacity="0.8"></path>
							</svg>
						</a>
					<?php endif; ?>

					<?php if ( ! empty( $instagram ) ) : ?>
						<a href="<?php echo esc_url( $instagram ); ?>" target="_blank" class="footer__social--ins">
							<svg xmlns="http://www.w3.org/2000/svg" width="21" height="20" viewbox="0 0 21 20" fill="none">
								<path fill-rule="evenodd" clip-rule="evenodd" d="M6.35132 0H14.3347C17.6415 0 20.3223 2.68629 20.3223 6V14C20.3223 17.3137 17.6415 20 14.3347 20H6.35132C3.04449 20 0.36377 17.3137 0.36377 14V6C0.36377 2.68629 3.04449 0 6.35132 0ZM16.3306 3C16.8295 3 17.3285 3.5 17.3285 4C17.3285 4.5 16.8295 5 16.3306 5C15.8316 5 15.3326 4.5 15.3326 4C15.3326 3.5 15.8316 3 16.3306 3ZM15.3326 10C15.3326 7.2425 13.0948 5 10.343 5C7.59122 5 5.35338 7.2425 5.35338 10C5.35338 12.7575 7.59122 15 10.343 15C13.0948 15 15.3326 12.7575 15.3326 10ZM10.343 7C8.68959 7 7.34923 8.34315 7.34923 10C7.34923 11.6569 8.68959 13 10.343 13C11.9964 13 13.3368 11.6569 13.3368 10C13.3368 8.34315 11.9964 7 10.343 7Z" fill="white" fill-opacity="0.8"></path>
							</svg>
						</a>
					<?php endif; ?>

					<?php if ( ! empty( $twitter ) ) : ?>
						<a href="<?php echo esc_url( $twitter ); ?>" target="_blank" class="footer__social--tw">
							<svg xmlns="http://www.w3.org/2000/svg" width="21" height="20" viewbox="0 0 21 20" fill="none">
								<path fill-rule="evenodd" clip-rule="evenodd" d="M18.2432 0H2.27648C1.17421 0 0.28064 0.89543 0.28064 2V18C0.28064 19.1046 1.17421 20 2.27648 20H18.2432C19.3454 20 20.239 19.1046 20.239 18V2C20.239 0.89543 19.3454 0 18.2432 0ZM15.599 6.23936C16.1788 6.1722 16.7311 6.02331 17.2453 5.80205C16.8612 6.35858 16.3749 6.84744 15.8145 7.23946C15.8198 7.35868 15.8225 7.47842 15.8225 7.59868C15.8225 11.2685 12.9403 15.5 7.66809 15.5C6.04914 15.5 4.54302 15.0403 3.2744 14.2526C3.499 14.2786 3.72736 14.2917 3.95841 14.2917C5.30172 14.2917 6.53756 13.8476 7.51818 13.1026C6.26407 13.0802 5.20554 12.2769 4.8407 11.1737C5.01533 11.2055 5.19533 11.2232 5.37963 11.2232C5.64131 11.2232 5.89493 11.1893 6.13511 11.1258C4.8235 10.8712 3.8359 9.74881 3.8359 8.40302V8.36814C4.22224 8.57587 4.66445 8.70081 5.13408 8.71539C4.36517 8.21769 3.85954 7.36753 3.85954 6.4044C3.85954 5.89472 4.00086 5.41784 4.24695 5.0076C5.66119 6.68813 7.77287 7.79391 10.1548 7.90948C10.1065 7.70697 10.0807 7.49456 10.0807 7.27694C10.0807 5.74374 11.3638 4.5 12.9468 4.5C13.771 4.5 14.5157 4.83736 15.0386 5.37723C15.6919 5.25228 16.3056 5.02113 16.859 4.70304C16.6452 5.35172 16.1911 5.89576 15.599 6.23936Z" fill="white" fill-opacity="0.8"></path>
							</svg>
						</a>
					<?php endif; ?>
				</div>
			</div>
			<div class="footer__bottom">
				<?php if ( ! empty( $copyright ) ) : ?>
					<div class="footer__copyright"><?php echo wp_kses_post( nl2br( $copyright ) ); ?></div>
				<?php endif; ?>

				<?php if ( ! empty( $bottom_menu ) ) : ?>
					<div class="footer__terms">
						<?php foreach ( $bottom_menu as $menu_item ) : ?>
							<a href="<?php echo esc_url( $menu_item['url'] ); ?>">
								<?php echo esc_html( $menu_item['title'] ); ?>
							</a>
						<?php endforeach; ?>
					</div>
				<?php endif; ?>
			</div>
			<?php if ( ! empty( $trademarks ) ) : ?>
				<div class="footer-trademarks"><?php echo wp_kses_post( nl2br( $trademarks ) ); ?></div>
			<?php endif; ?>
		</div>
	</div>
	<?php wp_footer(); ?>
	</body>
</html>
