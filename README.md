# Documentation for GoCD - Continuous Delivery server

This repository contains the user documentation for [GoCD](https://www.gocd.org/).

## Contributing

### Build the documentation locally

```
$ bundle install
$ bundle exec rake build

 To genenerate the local build and verify by serving a local server under the `public` directory
$ yarn run local-build 
```

### Serve the documentation locally

```
$ yarn run serve -D
```

Point your browser to [http://localhost:1313/](http://localhost:1313/)

### Publish to github pages
```
Checkout the gh-pages branch to a local build directory
$ git clone git@github.com:gocd-private/docs.gocd.org.git --branch gh-pages build --depth 1

Generate the production build
$ yarn run hugo

Update the build folder with the latest build from public 
$ cp -R ../public/* .

Commit your changes and push to gh-pages branch
$ git commit -am 'Updating...'
$ git push

```
Check the latest changes [here](https://gocd-private.github.io/docs.gocd.org/)
