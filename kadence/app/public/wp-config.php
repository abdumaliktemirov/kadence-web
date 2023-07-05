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


define('AUTH_KEY',         'c5kkj4gZaGlrYxe/awuzx59ADloeO6syh403p3ks2ABTVglpO03bxSw307zvMr9+RXccj7Hy9orhZmZP8Rvsxw==');
define('SECURE_AUTH_KEY',  'K2zfYgroRU94zk0HQ+xGMXPcDKs3ajQDyT1q13GuAPIYrqI6m3k4ciRkgbVdumqD0jsNXyEPNUlLlR+wC4daPA==');
define('LOGGED_IN_KEY',    'YPGDGd9hxerBqeLY6ns9HgtFja0aRyQq+Njva8K9DL5bhQQDN3VIZRmJGFzzC7e553X8b0Lx5dO2mevDWO3k3A==');
define('NONCE_KEY',        'usOQkUMGd2CVLbeZ1gWMQ46sCWCwOfPKK8KUg4U3x71qu4bm9+iaPtPFPMpV80nvkv4G3KGDTg+mZ3dwry4nNw==');
define('AUTH_SALT',        '9w3RmVnWfn6sSnKBVpfnnC44QWZlTpeYi3jojqGdKZe2n9cfywZyIP1d/dxhIGr/xFOSTVBNFRcO6NqB+GmaVA==');
define('SECURE_AUTH_SALT', 'iF+TgQWSfrXdcHvIgJIDkaJu9Hr17R0sdsWoul5Mdn0PYBqy5jMTrYLTsQIYmg6ikxQ0Cn3+dp5SpPC7rtTZkw==');
define('LOGGED_IN_SALT',   'mob5j0biY7m2mp1lKGDk+KuNafjhkoLX6umbEMAmBwGwohE0QR4X/nF/4Jk+RTDJcKTl/eLl5Vo5oiAEQtbX9g==');
define('NONCE_SALT',       'r+U4Kw7qBSyCwHRg2kr9zXnJPbTQObjkZZmLLJzBXUzetQmngmVvbU2F6Y1iJX9fOaC/HPvuKHR6YdVDYLCV5Q==');
define( 'WP_ENVIRONMENT_TYPE', 'local' );
/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
