    let Job     = ../Job.dhall
in  let JobSpec = ./Spec.dhall

in  let job  =
  \(name : Text) ->
  \(js : JobSpec) ->
    ({ mapKey = name, mapValue = js } : Job)
in job
