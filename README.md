# Dho

Generate CircleCI config from `dhall` representations. 


## Preparations

Make sure you have `stack` installed and that you have a recent `stackage` snapshot in your global `stack` project (in `~/.stack/global-project/stack.yaml`) `LTS-12.12` will suffice.


## Installing

Chances are that `dho` will be using the latest `master` of `dhall-json` so make sure you pull and install the latest:
```
git clone git@github.com:dhall-lang/dhall-json.git
cd dhall-json
```

This will install `dhall-to-yaml` and `dhall-to-json` executables
```
stack install dhall-json
```


## Running

```
dhall-to-yaml <<< './example.dhall'
```


