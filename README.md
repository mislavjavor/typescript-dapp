# Typescript DApp

Writing DApps with JavaScript _can_ be an exhausting process. Mainly because
there is no solid system of autocomplete for contracts, so a lot of time is
spent moving back and forth between files just to scan names.

A while ago, I stumbled upon the [Soltsice](https://github.com/dbrainio/Soltsice)
project which brings contract autocomplete into DApp development by using the
Typescript type system and creating types from the contract ABI.

I've decided to make this starter template to make it easy to get started with
DApp development using Typescript and Soltsice

## Getting Started

First make sure that `truffle` and `copyfiles` are globally installed

```
npm install -g truffle copyfiles
```

Clone the project

```
git clone https://github.com/mislavjavor/typescript-dapp.git
```

After that, run `npm install`

## Running the project

The easiest way to run the project is to run

```
npm run build
```

Which is an alias script that runs:

```
truffle migrate && soltsice ./build/contracts ./types && webpack
```

It compiles your contracts, migrates them to the active network and
then uses Soltsice to create typescript wrappers and finally uses webpack
to pack all dependencies in the `dist/bundle.js`

After running this, you should simply open `index.html` with your browser and
an alert should pop, showing a successfully deployed contract

## Lightweight

The fact that this project has no external dependencies and no attached web
server is intentional. You should use this as a starting point so no libraries
are loaded.
