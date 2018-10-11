{-
jobs:
  job1:
    docker:
      - image: circleci/golang:1.9
    working_directory: /home/circleci/project
    environment:
      GOPATH: /my/path
    steps:
      - checkout
      - run:
          command: mycommand
          working_directory: mydir
-}


    let Step   = ../Step.dhall
in  let Env    = ../Env.dhall
in  let DockerContainer = ../DockerContainer.dhall
in

{ steps             : List Step
, environment       : Optional Env
, working_directory : Optional Text
, docker            : Optional (List DockerContainer)
}
