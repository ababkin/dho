
    let Auth    = ./Auth.dhall
in  let DockerContainer = ../DockerContainer.dhall
in
\(img : Text) -> (
  { image = img
  , auth  = ([] : Optional Auth)
  } : DockerContainer)
