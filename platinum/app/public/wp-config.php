<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * Localized language
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'local' );

/** Database username */
define( 'DB_USER', 'root' );

/** Database password */
define( 'DB_PASSWORD', 'root' );

/** Database hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */


/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';


/* Add any custom values between this line and the "stop editing" line. */



/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
if ( ! defined( 'WP_DEBUG' ) ) {
	define( 'WP_DEBUG', false );
}


define('AUTH_KEY',         'ePH/Ss0kSGwD7XiwzOTl/Tyy0+CZDTvMJj5kuTZADqHqiG6KyRcsZepkwfJZ3JTShXnQojuqXepjI4WaWREcVQ==');
define('SECURE_AUTH_KEY',  'n6QwV8VYr1B92tNawvcCGbZCc0zMe2HwjTsabc7i7MX0BCFbidFRLgQUEbmWH4pD50W3+w/XG5x9w5kYuKkvtw==');
define('LOGGED_IN_KEY',    'hFmKn9jt6rGs/Tdqb4IZvycoMPxIA2gYNphtvqDxYNaz3+rNeTFBefGr4mrgrQ0BU/0h7zVuqvBomf9q1Tx+Yw==');
define('NONCE_KEY',        '58YXVPPej5whmmaP1PMpLbredvfhBimnLs/prkZQ8Uq8W/W9kR/RqDI22Qklt8uZD1o3sGyBTZg4Y4cusWyD+g==');
define('AUTH_SALT',        'oTUpM6yRhr1aymF6Gwx+qKDe5PYc1XbuKxYlvQ514VeZQoVXDjSrDa0wYPYQEiyHeNnn7bJShBKyLibLSQO+CA==');
define('SECURE_AUTH_SALT', 'T4DJsTOZdb3QQ6IgG+od2s2BmoFyJ8l3/wpgb5K9iMuT3HJdB9ydBgycmgJ1ViQxCPd/pzDk1a33UwPYzhqs0w==');
define('LOGGED_IN_SALT',   'DMrK/VDnCP1JX2bwuVrbkTnr8FDvNZYAxBRGkOh5VY7oCapYoHUEzJG+DwYNL4DyZbfUPAb36F/WkLT6N4Nsig==');
define('NONCE_SALT',       'GECkSxstLGVq+5hT/wh0OxB27f/QWRTapJ9N6pPaJFUoaZ5VFUzxI2hp9ASI9vk/8VB46VZ3DfiQim3zeINQtg==');
define( 'WP_ENVIRONMENT_TYPE', 'local' );
/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
