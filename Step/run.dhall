    let Step    = ../Step.dhall
in  let RunStep    = ./RunStep.dhall

in  let run = \(dir : Text) -> \(cmd : Text) ->
  < Checkout : Text | Run = { run = { working_directory = dir, command = cmd } } >
in run
