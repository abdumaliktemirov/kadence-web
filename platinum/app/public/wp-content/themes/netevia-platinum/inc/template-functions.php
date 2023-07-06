<?php
/**
 * Functions which enhance the theme by hooking into WordPress
 *
 * @package Netevia_Platinum
 */

/**
 * Adds custom classes to the array of body classes.
 *
 * @param array $classes Classes for the body element.
 * @return array
 */
function netevia_platinum_body_classes( $classes ) {
	$classes[] = 'netevia-platinum';

	// Adds a class of hfeed to non-singular pages.
	if ( ! is_singular() ) {
		$classes[] = 'hfeed';
	}

	// Adds a class of no-sidebar when there is no sidebar present.
	if ( ! is_active_sidebar( 'sidebar-1' ) ) {
		$classes[] = 'no-sidebar';
	}

	return $classes;
}
add_filter( 'body_class', 'netevia_platinum_body_classes' );

/**
 * Add a pingback url auto-discovery header for single posts, pages, or attachments.
 */
function netevia_platinum_pingback_header() {
	if ( is_singular() && pings_open() ) {
		printf( '<link rel="pingback" href="%s">', esc_url( get_bloginfo( 'pingback_url' ) ) );
	}
}
add_action( 'wp_head', 'netevia_platinum_pingback_header' );


/**
 * Add extra kses support
 *
 * @param array $allowed_html default allowed html tags.
 *
 * @return array
 */
function netevia_wp_kses_allowed_html( $allowed_html ) {
	$allowed_atts = array(
		'align'           => array(),
		'class'           => array(),
		'type'            => array(),
		'id'              => array(),
		'dir'             => array(),
		'lang'            => array(),
		'style'           => array(),
		'xml:lang'        => array(),
		'src'             => array(),
		'alt'             => array(),
		'href'            => array(),
		'rel'             => array(),
		'rev'             => array(),
		'target'          => array(),
		'novalidate'      => array(),
		'value'           => array(),
		'name'            => array(),
		'tabindex'        => array(),
		'action'          => array(),
		'method'          => array(),
		'for'             => array(),
		'width'           => array(),
		'height'          => array(),
		'data'            => array(),
		'title'           => array(),
		'placeholder'     => array(),
		'role'            => array(),
		'aria-hidden'     => array(),
		'aria-labelledby' => array(),
		'xmlns'           => array(),
		'viewbox'         => array(),
		'fill'            => array(),
		'focusable'       => array(),
		'd'               => array(),
	);

	$allowed_html['select'] = $allowed_atts;
	$allowed_html['input']  = $allowed_atts;
	$allowed_html['option'] = $allowed_atts;
	$allowed_html['svg']    = $allowed_atts;
	$allowed_html['path']   = $allowed_atts;

	return $allowed_html;
}

add_filter( 'wp_kses_allowed_html', 'netevia_wp_kses_allowed_html' );
