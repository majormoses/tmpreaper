require 'semver'

name             'tmpreaper2'
maintainer       'Ben Abrams'
maintainer_email 'me@benabrams.it'
license          'All rights reserved'
description      'Installs/Configures tmpreaper'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
chef_version     '>= 12.5' if respond_to?(:chef_version)
issues_url       'https://github.com/majormoses/tmpreaper/issues' if respond_to?(:issues_url)
source_url       'https://github.com/majormoses/tmpreaper' if respond_to?(:source_url)
supports         'ubuntu'

version SemVer.find.format '%M.%m.%p'

recipe 'tmpreaper2', 'Main tmpreaper configuration'
recipe 'tmpreaper2::schedule', 'Adds cron job for tmpreaper'
