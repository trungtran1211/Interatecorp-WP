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
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'interate' );

/** Database username */
define( 'DB_USER', 'root' );

/** Database password */
define( 'DB_PASSWORD', '' );

/** Database hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

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
define( 'AUTH_KEY',         'PD(>sF$8647AJiJ2ezR|45z|rX{*GA?%r%cVrpUVqP},31TbGu}liiV=nGYfS^eK' );
define( 'SECURE_AUTH_KEY',  '+`^:dn(6-Kie+X6$+f$,Xb._ug2M{R;A0I-L]#GN#|VgrE0My{5{/z{z102H[H-3' );
define( 'LOGGED_IN_KEY',    'b4*;#C9Y({r*7GZHkv@e+oyuZ6C%FTeZ!WCPR?TgjcOWjQSe>>&>J<e:i;w=#64s' );
define( 'NONCE_KEY',        '|MnD>te&{{&s_r{`-zxw#*(6:nko*cShbn}%am0et0!+WI/D~#/)Amk|T`!j8!I7' );
define( 'AUTH_SALT',        'u1b5y<Bg-xJnk.P~/m-cs:5>:-!(BFBpT^x?j[|unN{ o@N>Vj:$-$5j|45YKK4`' );
define( 'SECURE_AUTH_SALT', '#GBJg{u:Y-cT>*F~j3Ff0S4GNWaj(x4[w|$C|,+`f<PnG^w:9Fk>ISAH9~$@O(wk' );
define( 'LOGGED_IN_SALT',   'kEqzRc*@k_qsq7xp3;]?jGL?78<las2%q}1v:0H ]<Oi/`onMZ6$gg/f]`|3k_2l' );
define( 'NONCE_SALT',       '1Dv3}z0oK^I_CDF(uMA^jo[ZbT@[(pLI(UE*<Y/lYgBU.#J/IKqR5o}s/*OHNqdK' );

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

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
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
