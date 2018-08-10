# MacSetup [![Build Status][travis-image]][travis-url]
Minimal development setup for Mac OS X El Capitan

## Usage

```bash
$ curl -fsSL https://github.com/dylantyates/macsetup/blob/master/bin/osx-setup.sh | sh
```

## Testing

Install [bats-core](https://github.com/bats-core/bats-core/)

```bash
$ brew install bats-core
```

```bash
$ cd bin

$ bats unit-tests.bats

### Example Output ###
✓ Ruby is installed
✓ Brew is installed
✓ Git is installed
✓ Node.js is installed

4 tests, 0 failures
```


## Development
See [CONTRIBUTING](CONTRIBUTING.md)

## History
See [CHANGELOG](CHANGELOG.md)

## Credits
See [AUTHORS](AUTHORS.md)

## License
See [LICENSE](LICENSE)

[travis-image]: https://travis-ci.org/dylantyates/macsetup.svg?branch=master
[travis-url]: https://travis-ci.org/dylantyates/macsetup
