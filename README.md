# `<cable-ready>` Element

## Install

### Rubygem

```sh
bundle add cable_ready-element
```

### JavaScript

There are a few ways to install the CableReady JavaScript client, depending on your application setup.

#### ESBuild / Webpacker

```sh
yarn add @cable_ready/element
```

#### Importmaps:

```ruby
# config/importmap.rb

# ...

pin 'cable_ready', to: 'cable_ready.min.js', preload: true
pin '@cable_ready/element', to: 'cable_ready-element.min.js', preload: true
```

#### Rails Asset pipeline (Sprockets):

```html+erb
<!-- app/views/layouts/application.html.erb -->

<%= javascript_include_tag "cable_ready-element.umd.min.js", "data-turbo-track": "reload" %>
```

### Installing the element

Within your `application.js` import the `@cable_ready/element` package:

```js
// app/javascript/application.js

import "@cable_ready/element"
```

## Contributing

### Code of Conduct

Everyone interacting with CableReady is expected to follow the [Code of Conduct](CODE_OF_CONDUCT.md)

### Coding Standards

This project uses [Standard](https://github.com/testdouble/standard)
and [prettier-standard](https://github.com/sheerun/prettier-standard) to minimize bike shedding related to code formatting.

Please run `./bin/standardize` prior submitting pull requests.

### Releasing

1. Make sure that you run `yarn` and `bundle` to pick up the latest.
1. Bump version number at `lib/cable_ready/element/version.rb`. Pre-release versions use `.preN`
1. Run `rake build` and `yarn build`
1. Commit and push changes to github
1. Run `rake release`
1. Run `yarn publish --no-git-tag-version`
1. Yarn will prompt you for the new version. Pre-release versions use `-preN`
1. Commit and push changes to GitHub
1. Create a new release on GitHub ([here](https://github.com/cableready/element/releases)) and generate the changelog for the stable release for it

## License

CableReady is released under the [MIT License](LICENSE.txt).
