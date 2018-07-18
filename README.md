[![Build Status](https://secure.travis-ci.org/majormoses/tmpreaper.png)](http://travis-ci.org/majormoses/tmpreaper)

Description
===========
This cookbook install `tmpreaper` and the associated configuration file for Ubuntu.

This cookbook is a forked version of https://github.com/customink-webops/tmpreaper as it was no longer being maintained I picked it up and am renaming it to `tmpreaper2` to avoid supermarket namespace collision and when its in a good state will be pushed to the supermarket.

Requirements
============
## Cookbooks:

This cookbook doesn't have direct dependencies on other cookbooks.

## Platforms
* Ubuntu OS

Attributes
==========

## tmpreaper
* `default['tmpreaper']['show_warning']` - show a warning before running
* `default['tmpreaper']['protect_extra']` - extra directories to protect/ignore
* `default['tmpreaper']['dirs']` - directory or directories to clean
* `default['tmpreaper']['delay']` - maximum delay before starting processing
* `default['tmpreaper']['additional_options']` - additional options for tmpreaper
* `default['tmpreaper']['tmptime']` - how old are files to delete (e.g.`'1d'`)

## cron
* `default['tmpreaper']['cron']['hour']` = hour to run the cron task
* `default['tmpreaper']['cron']['minute']` - minute to run the cron task

Recipes
=======

To install just tmpreaper (and run the cleaning command yourself):

    tmpreaper

To install `tmpreaper` and a an entry in `crontab`:

    `tmpreaper2`
    `tmpreaper2::schedule`

License and Authors
===================

Author:: Seth Vargo <svargo@customink.com>

Copyright:: 2012, CustomInk, LLC.

Author:: Ben Abrams <me@benabrams.it>

Copyright:: 2018, Ben Abrams

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
