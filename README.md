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
The contents of the `public` directory needs to be pushed out to the *[gh-pages](https://github.com/gocd/new-docs.go.cd/tree/gh-pages)* branch of the repository.


```
Check the latest changes deployed [here](https://gocd-private.github.io/docs.gocd.org/)

### Update this repository with Current docs changes

Update the list of directories to be updated in the sync script.
Run the sync script to copy over changes from the current [docs repository](https://github.com/gocd/docs.go.cd)
Go through the changes to see if everything can be committed and then push the code.
```
 $ sync.sh
```

## Contributing

We encourage you to contribute to Go. For information on contributing to this project, please see our [contributor's guide](https://www.gocd.org/contribute).
A lot of useful information like links to user documentation, design documentation, mailing lists etc. can be found in the [resources](https://www.gocd.org/community/resources.html) section.

### Releasing a new version of the documentation

Assuming current stable is `17.4.0`, you are about to release `17.5.0` and the next version is going to be `17.6.0`, you would execute —

```
CURRENT_VERSION=17.4.0 VERSION_TO_RELEASE=17.5.0  NEXT_VERSION=17.6.0 REMOTE_NAME=upstream rake bump_version
```

## License

```plain
Copyright 2018 ThoughtWorks, Inc.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```
