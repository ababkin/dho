
    let Step   = ../Step.dhall
in  let Env    = ../Env.dhall
in  let DockerContainer = ../DockerContainer.dhall
in
{ steps             = ([] : List Step)
, environment       = ([] : Optional Env)
, working_directory = ([] : Optional Text)
, docker            = ([] : Optional (List DockerContainer))
}
