
    let Auth    = ./Auth.dhall
in  let DockerContainer = ../DockerContainer.dhall

in  let None = ../Util/None.dhall

in
\(img : Text) ->
  { image = img
  , auth  = None Auth
  } : DockerContainer
