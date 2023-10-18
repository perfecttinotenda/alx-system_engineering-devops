# This wil increase number yema requests which nginx can be handle.
# howeve, increasing maximum number of open files limit for a nginx user.

exec { 'set_ulimit_to 5000':
  command => '/bin/sed -i "s/ULIMIT.*/ULIMIT=\"-n 5000\"/" /etc/default/nginx'

} -> exec { 'restart nginx':
  command => '/usr/sbin/service nginx restart',
}
