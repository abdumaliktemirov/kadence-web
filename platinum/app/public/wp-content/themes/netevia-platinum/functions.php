<?php
/**
 * Netevia Platinum functions and definitions
 *
 * @link https://developer.wordpress.org/themes/basics/theme-functions/
 *
 * @package Netevia_Platinum
 */

if ( ! defined( '_S_VERSION' ) ) {
	// Replace the version number of the theme on each release.
	define( '_S_VERSION', '1.0.0' );
}

/**
 * Sets up theme defaults and registers support for various WordPress features.
 *
 * Note that this function is hooked into the after_setup_theme hook, which
 * runs before the init hook. The init hook is too late for some features, such
 * as indicating support for post thumbnails.
 */
function netevia_platinum_setup() {
	/*
		* Make theme available for translation.
		* Translations can be filed in the /languages/ directory.
		* If you're building a theme based on Netevia Platinum, use a find and replace
		* to change 'netevia-platinum' to the name of your theme in all the template files.
		*/
	load_theme_textdomain( 'netevia-platinum', get_template_directory() . '/languages' );

	// Add default posts and comments RSS feed links to head.
	add_theme_support( 'automatic-feed-links' );

	/*
		* Let WordPress manage the document title.
		* By adding theme support, we declare that this theme does not use a
		* hard-coded <title> tag in the document head, and expect WordPress to
		* provide it for us.
		*/
	add_theme_support( 'title-tag' );

	/*
		* Enable support for Post Thumbnails on posts and pages.
		*
		* @link https://developer.wordpress.org/themes/functionality/featured-images-post-thumbnails/
		*/
	add_theme_support( 'post-thumbnails' );

	/*
		* Switch default core markup for search form, comment form, and comments
		* to output valid HTML5.
		*/
	add_theme_support(
		'html5',
		array(
			'search-form',
			'comment-form',
			'comment-list',
			'gallery',
			'caption',
			'style',
			'script',
		)
	);

	// Set up the WordPress core custom background feature.
	add_theme_support(
		'custom-background',
		apply_filters(
			'netevia_platinum_custom_background_args',
			array(
				'default-color' => 'ffffff',
				'default-image' => '',
			)
		)
	);

	register_nav_menus(
		array(
			'primary-menu' => esc_html__( 'Primary', 'netevia-platinum' ),
			'footer-menu'  => esc_html__( 'Footer', 'netevia-platinum' ),
			'bottom-menu'  => esc_html__( 'Bottom', 'netevia-platinum' ),
		)
	);

	// Add theme support for selective refresh for widgets.
	add_theme_support( 'customize-selective-refresh-widgets' );

	/**
	 * Add support for core custom logo.
	 *
	 * @link https://codex.wordpress.org/Theme_Logo
	 */
	add_theme_support(
		'custom-logo',
		array(
			'height'      => 250,
			'width'       => 250,
			'flex-width'  => true,
			'flex-height' => true,
		)
	);
}
add_action( 'after_setup_theme', 'netevia_platinum_setup' );

/**
 * Set the content width in pixels, based on the theme's design and stylesheet.
 *
 * Priority 0 to make it available to lower priority callbacks.
 *
 * @global int $content_width
 */
function netevia_platinum_content_width() {
	$GLOBALS['content_width'] = apply_filters( 'netevia_platinum_content_width', 640 );
}
add_action( 'after_setup_theme', 'netevia_platinum_content_width', 0 );

/**
 * Register widget area.
 *
 * @link https://developer.wordpress.org/themes/functionality/sidebars/#registering-a-sidebar
 */
function netevia_platinum_widgets_init() {
	register_sidebar(
		array(
			'name'          => esc_html__( 'Sidebar', 'netevia-platinum' ),
			'id'            => 'sidebar-1',
			'description'   => esc_html__( 'Add widgets here.', 'netevia-platinum' ),
			'before_widget' => '<section id="%1$s" class="widget %2$s">',
			'after_widget'  => '</section>',
			'before_title'  => '<h2 class="widget-title">',
			'after_title'   => '</h2>',
		)
	);
}
add_action( 'widgets_init', 'netevia_platinum_widgets_init' );

/**
 * Enqueue scripts and styles.
 */
function netevia_platinum_scripts() {
	wp_enqueue_style( 'netevia-platinum-style', get_stylesheet_uri(), array(), time() );
	wp_style_add_data( 'netevia-platinum-style', 'rtl', 'replace' );

	wp_enqueue_style( 'netevia-platinum-main', get_template_directory_uri() . '/css/main.css', array(), _S_VERSION );
	wp_enqueue_style( 'netevia-platinum-animate', get_template_directory_uri() . '/plugins/wow/animate.css', array(), _S_VERSION );

	wp_enqueue_script( 'netevia-platinum-wow', get_template_directory_uri() . '/plugins/wow/wow.min.js', array(), _S_VERSION, true );
	wp_enqueue_script( 'netevia-platinum-app', get_template_directory_uri() . '/js/app.js', array(), _S_VERSION, true );
	

	if ( is_singular() && comments_open() && get_option( 'thread_comments' ) ) {
		wp_enqueue_script( 'comment-reply' );
	}
}
add_action( 'wp_enqueue_scripts', 'netevia_platinum_scripts' );

/**
 * Implement the Custom Header feature.
 */
require get_template_directory() . '/inc/custom-header.php';

/**
 * Custom template tags for this theme.
 */
require get_template_directory() . '/inc/template-tags.php';

/**
 * Functions which enhance the theme by hooking into WordPress.
 */
require get_template_directory() . '/inc/template-functions.php';

/**
 * Load Jetpack compatibility file.
 */
if ( defined( 'JETPACK__VERSION' ) ) {
	require get_template_directory() . '/inc/jetpack.php';
}

if ( function_exists( 'acf_add_options_page' ) ) {

	acf_add_options_page(
		array(
			'page_title' => 'Theme General Settings',
			'menu_title' => 'Theme Settings',
			'menu_slug'  => 'theme-general-settings',
			'capability' => 'edit_posts',
			'redirect'   => false,
		)
	);

	acf_add_options_sub_page(
		array(
			'page_title'  => 'Theme Header Settings',
			'menu_title'  => 'Header',
			'parent_slug' => 'theme-general-settings',
		)
	);

	acf_add_options_sub_page(
		array(
			'page_title'  => 'Theme Footer Settings',
			'menu_title'  => 'Footer',
			'parent_slug' => 'theme-general-settings',
		)
	);

}

/**
 * Get array of menu
 */
function netevia_get_menu_array( $menu_slug ) {
	$menu      = array();
	$locations = get_nav_menu_locations();

	if ( isset( $locations[ $menu_slug ] ) ) {
		$locate_menu = get_term( $locations[ $menu_slug ] );
		$array_menu  = wp_get_nav_menu_items( $locate_menu->term_id );
		$submenu     = array();

		foreach ( $array_menu as $m ) {
			if ( empty( $m->menu_item_parent ) ) {
				$menu[ $m->ID ]             = array();
				$menu[ $m->ID ]['ID']       = $m->ID;
				$menu[ $m->ID ]['title']    = ! empty( $m->title ) ? $m->title : __( 'Menu title', 'netevia-platinum' );
				$menu[ $m->ID ]['url']      = ! empty( $m->url ) ? $m->url : '#';
				$menu[ $m->ID ]['children'] = array();
			}
		}

		foreach ( $array_menu as $m ) {
			if ( $m->menu_item_parent ) {
				$submenu[ $m->ID ]                                  = array();
				$submenu[ $m->ID ]['ID']                            = $m->ID;
				$submenu[ $m->ID ]['title']                         = ! empty( $m->title ) ? $m->title : __( 'Menu title', 'netevia-platinum' );
				$submenu[ $m->ID ]['url']                           = ! empty( $m->url ) ? $m->url : '#';
				$menu[ $m->menu_item_parent ]['children'][ $m->ID ] = $submenu[ $m->ID ];
			}
		}
	}

	return $menu;
}

function netevia_nl2p( $string ) {
	$paragraphs = '';

	foreach ( explode( "\n", $string ) as $line ) {
		if ( trim( $line ) ) {
			$paragraphs .= '<p>' . $line . '</p>';
		}
	}

	if ( empty( $paragraphs ) ) {
		$paragraphs .= '<p>' . $string . '</p>';
	}

	return $paragraphs;
}

/**
 * Replace symbol in string
 */
function netevia_string_symbol_tag( $string, $symbol, $tag, $prepend_tagged = '' ) {
	if ( strpos( $string, $symbol ) !== false ) {
		$pos = strpos( $string, $symbol );
		if ( false !== $pos ) {
			$string = substr_replace( $string, '<' . $tag . '>' . $prepend_tagged, $pos, 2 );
			$pos    = strpos( $string, $symbol );
			if ( false !== $pos ) {
				$string = substr_replace( $string, '</' . $tag . '>', $pos, 2 );
			}
		}
	}

	return $string;
}