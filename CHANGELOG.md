# Change Log
This project adheres to [Semantic Versioning](http://semver.org/).

This CHANGELOG follows the format located [here](https://github.com/sensu-plugins/community/blob/master/HOW_WE_CHANGELOG.md)

## [Unreleased]

## [v0.2.2] - 2018-09-30
### No-op
- bump version and try deploying to supermarket from travis again

## [v0.2.1] - 2018-07-20
### No-op
- bump version

## [v0.0.2] - 2018-07-20
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


[Unreleased]: https://github.com/majormoses/tmpreaper/compare/v0.2.3...HEAD
[v0.2.3]: https://github.com/majormoses/tmpreaper/compare/v0.2.2...v0.2.3
[v0.2.2]: https://github.com/majormoses/tmpreaper/compare/v0.2.1...v0.2.2
[v0.2.1]: https://github.com/majormoses/tmpreaper/compare/v0.2.0...v0.2.1
[v0.2.0]: https://github.com/majormoses/tmpreaper/compare/v0.1.0...v0.2.0
[v0.0.1]: https://github.com/majormoses/tmpreaper/compare/21e37f925ca84e390b085fa0dad1a867a518f1f8...v0.0.1
