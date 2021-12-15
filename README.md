![WildCodeSchool](https://avatars.githubusercontent.com/u/8874047?s=100)

# Project 3 backend structure

## Requirements

- [nodejs](https://nodejs.org/en/)
- [npm](https://www.npmjs.com/)

## Install

```shell
cp .env.example .env # and add your own environment variable
npm install
npm start
```

## Tools

### Eslint

[ESlint](https://eslint.org/) help you to find and fix problems in your JavaScript code.

You can launch eslint with :
```shell
npm run lint
```

Eslint is configured with [Husky](https://typicode.github.io/husky/#/) to be triggered in the `pre-commit` git hook.
