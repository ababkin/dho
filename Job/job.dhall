    let Job         = ../Job.dhall
in  let Step        = ../Step.dhall

in  let job  =
  \(name : Text) -> \(ss : List Step) -> ({ mapKey = name, mapValue = { steps = ss } } : Job)

in job
