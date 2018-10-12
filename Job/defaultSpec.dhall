
    let Step   = ../Step.dhall
in  let Env    = ../Env.dhall
in  let DockerContainer = ../DockerContainer.dhall
in  let Spec = ./Spec.dhall

in
{ steps             = [] : List Step
, environment       = None Env
, working_directory = None Text
, docker            = None (List DockerContainer)
} : Spec
