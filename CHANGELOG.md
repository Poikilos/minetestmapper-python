# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a
Changelog](https://keepachangelog.com/en/1.0.0/).


## [git] - 2020-02-10
(Poikilos)
### Removed
- Remove redundant tracebacks and other redundant exception info.

### Changed
- Fix exceptions occurring during exception handling.
- Stop after exceptions occur--revert earlier changes. The earlier
  change just results in a blank image and many ["Type
  errors"#2](https://github.com/poikilos/minetestmapper-python/issues/2)
  anyway--exceptions are now restored, to indicate the problem before
  wasting resources silently.
- (documentation) Move changes from README.md to CHANGELOG.md.


## [git] - 2018-02-15
(Poikilos)
###
- made new repo <https://github.com/poikilos/minetestmapper-python> to contain:
  - minetestmapper files that were discontinued (from official minetest's minetest/util)
    - as separate commit, replaced it with Poikilos fork of minetestmapper.py (deleted Poikilos minetest fork where only the script was changed, deleted copy of the same changed version of the script at <https://github.com/poikilos/EnlivenMinetest/mtanalyze> -- see changes by Poikilos at previous dates in this changelog)
  - minetestmapper-numpy.py by spillz
    - as separate commit, replaced it with Poikilos fork of minetestmapper-numpy.py from  EnlivenMinetest/mtanalyze and deleted it from there--see changes by Poikilos at previous dates in this changelog)
- clarified license notices within python files
- (minetestmapper-numpy.py) changed minheight and maxheight to --min-y and --max-y to conform to official minetestmapper
- (minetestmapper.py) for now, silently ignore drawalpha, noshading, min-y, max-y, backend, zoom, colors, scales for compatibility with official minetestmapper
- (minetestmapper-numpy.py) for now silently ignore drawalpha, noshading, geometry, scales, colors, backend (and rename `pixelspernode` param to `zoom`) for compatibility with official minetestmapper


## [git] - 2018-02-14
(Poikilos)
### Changed
- (minetestmapper-numpy.py) fixed exception while showing exception (see uses of `"<Could not finish writing r error since r was not initialized>"` message variable)--the original exception occurs for unknown reason


## [git] - 2017-04-12
(Poikilos)
###  Changed
- (minetestmapper.py) PEP8 compliance


## [git] - 2017-03-17
(Poikilos)
### Changed
- (minetestmapper.py) removed license from script (file should fall under the LICENSE included in the project)


## [git] - 2016-03-08
(Poikilos)
### Changed
- forked minetest (only to change minetestmapper.py)
- (minetestmapper.py) geometry and region params


## [git] - 2011-07-30
### Changed
- WF: Support for content types extension, refactoring
- erlehmann: PEP 8 compliance.


## [git] - 2011-06-04
### Added
- celeron55: added #!/usr/bin/python2 and converted \r\n to \n to make it easily executable on Linux


## [git] - 2011-06-02
### Added
- j0gge: command line parameters, coordinates, players, ...


## [git] - 2011-05-30
### Removed
- celeron55: simultaneous support for sectors/sectors2, removed


## [git] - 2011-05-29
### Added
- j0gge: initial release
