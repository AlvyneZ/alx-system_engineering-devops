# Fixing a typo to fix server error 500

exec { 'fix-typo':
  command => "sed -i 's/phpp/php/g' /var/www/html/wp-settings.php",
  path    => '/bin';
}
