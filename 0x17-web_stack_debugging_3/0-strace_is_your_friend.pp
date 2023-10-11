# A puppet manuscript to replace a line on file in a server
# Your 0-strace_is_your_friend.pp file must contain Puppet_code

$file_to_edit = '/var/www/html/wp-settings.php'

#replace the line containing "phpp" with our "php"

exec { 'replace_line':
  command => "sed -i 's/phpp/php/g' ${file_to_edit}",
  path    => ['/bin','/usr/bin']
}