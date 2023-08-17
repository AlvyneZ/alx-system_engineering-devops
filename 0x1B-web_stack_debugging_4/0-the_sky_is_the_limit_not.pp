# Fixing server's file opening limit to stop failing requests

exec { 'comment-ulimit':
  command  => 'sed -i "s/^ULIMIT\(.*\)/# ULIMIT\1/g" /etc/default/nginx; service nginx restart',
  provider => shell,
}
