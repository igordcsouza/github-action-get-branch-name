<h1 align="center">Welcome to github-action-get-branch-name 👋</h1>
<p>
  <img alt="Version" src="https://img.shields.io/badge/version-1.0-blue.svg?cacheSeconds=2592000" />
  <a href="https://twitter.com/igordcsouza" target="_blank">
    <img alt="Twitter: igordcsouza" src="https://img.shields.io/twitter/follow/igordcsouza.svg?style=social" />
  </a>
</p>

> This action can help you to get the current branch name when run an action on a feature branch!

## Variables
* TOKEN: A valid Github token.

## How to use

```
  - uses: igordcsouza/github-action-get-branch-name@master
    env:
      GITHUB_TOKEN: ${{ secrets.TOKEN }}
  - name: Set branch name as VARIABLE_NAME
    run: echo ::set-env name=VARIABLE_NAME::${BRANCH_NAME}
```

## Author

👤 **Igor Souza**

* Twitter: [@igordcsouza](https://twitter.com/igordcsouza)

## Show your support

Give a ⭐️ if this project helped you!

***
_This README was generated with ❤️ by [readme-md-generator](https://github.com/kefranabg/readme-md-generator)_