class { '::locales':
  default_locale => 'en_US.UTF-8',
  locales        => ['en_US.UTF-8 UTF-8','de_DE.UTF-8 UTF-8'],
}

class { '::mysql::server':
  root_password => 'blubb123',
}
