    let Step    = ../Step.dhall
in  let RunStep    = ./RunStep.dhall

in  let run = \(dir : Text) -> \(cmd : Text) ->
  < Checkout : {} | Run = ({ working_directory = dir, command = cmd } : RunStep) >
in run
