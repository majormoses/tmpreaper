# Change Log
This project adheres to [Semantic Versioning](http://semver.org/).

This CHANGELOG follows the format located [here](https://github.com/sensu-plugins/community/blob/master/HOW_WE_CHANGELOG.md)

## [Unreleased]

### Breaking Changes
- renamed cookbook to `tmpreaper2` so it can be uploaded to supermarket and avoid namespace collisions, to make it easy to transition you need only update the name of the cookbook in your dependencies and runlist as we kept the attribute namespace untouched (@majormoses)

### Fixed
- added name attribute for cookbook (@majormoses)
- fix logic for `tmptime` to look if its `nil` as its not a truthy value (@majormoses)

### Added
- integration tests via `test-kitchen`, `kitchen-dokken`, and `inspec` (@majormoses)
- `.editorconfig` to make contributions more consistent with prefered style (@majormoses)
- custom `.rubocop.yml` that is more tailored to chef and use `cookstyle` (@majormoses)
- programatically update cookbook version using the `semver2` gem (@majormoses)
- testing for ruby `2.4.3` (@majormoses)
- created a standard interface for testing using `make` (@majormoses)
- added new dependencies (@majormoses)


### Changed
- updated `.gitignore` (@majormoses)

### Removed
- ruby testing for `< 2.4.3`


[Unreleased]: https://github.com/majormoses/tmpreaper/compare/v0.0.1...HEAD
[v0.0.1]: https://github.com/majormoses/tmpreaper/compare/21e37f925ca84e390b085fa0dad1a867a518f1f8...v0.0.1
