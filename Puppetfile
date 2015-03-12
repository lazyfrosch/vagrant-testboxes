# -*- mode: ruby -*-
# vi: set ft=ruby :

forge "https://forgeapi.puppetlabs.com"

# helper functions
def github(vendor, modname, ref, prefix=nil, reponame=nil) # {{{
  prefix = "puppet-" if not prefix
  reponame = modname if not reponame
  pvendor = vendor.gsub(/-/, '')

  mod pvendor + "-" + modname,
    :ref => ref,
    :git => "https://github.com/" + vendor + "/" + prefix + reponame + ".git"
end
#}}}
def puppetlabs(modname, ref) #{{{
  github 'puppetlabs', modname, ref, 'puppetlabs-'
end
# }}}
def lazyfrosch(modname, ref, prefix=nil, reponame=nil) #{{{
  prefix = "lazyfrosch-" if not prefix
  reponame = modname if not reponame
  mod "lazyfrosch-" + modname,
    :ref => ref,
    :git => 'git@git.lazyfrosch.de:lazyfrosch/' + prefix + reponame + '.git'
end
# }}}

# PuppetLabs
puppetlabs 'mysql',  '3.3.0'
puppetlabs 'stdlib', '4.3.2'

# other
github 'saz', 'locales', 'v2.2.0'

# vi: foldmethod=marker :
