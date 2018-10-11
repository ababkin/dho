    let Step    = ../Step.dhall
in  let RunStep    = ./RunStep.dhall
in
< Checkout = {=} | Run : RunStep >
