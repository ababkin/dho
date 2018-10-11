    let Step    = ../Step.dhall
in  let RunStep = ./RunStep.dhall
in  let RenderedStep = ./RenderedStep.dhall
in  let render = \(s : Step) -> merge
  { Checkout = \(x : {}) -> < Checkout = "checkout" | Run : { run : RunStep } > : RenderedStep
  , Run = \(rs : RunStep) -> < Checkout : Text | Run = { run = rs } > : RenderedStep
  } s
in render
