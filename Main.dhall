    let Job     = ./Job.dhall
in  let KeyJob  = ./KeyJob.dhall
in  let Root    = ./Root.dhall
in  let Step    = ./Step.dhall
in  let RunStep = ./Step/RunStep.dhall
in  let RenderedStep = ./Step/RenderedStep.dhall
in  let keyJob  =
  λ(key : Text) → λ(job : Job) → ({ mapKey = key, mapValue = job } : KeyJob)

in  let renderStep = λ(s : Step) -> merge
            { Checkout = λ(x : {}) -> < Checkout = "checkout" | Run : { run : RunStep } > : RenderedStep
            , Run = λ(rs : RunStep) -> < Checkout : Text | Run = { run = rs } > : RenderedStep
            } s

in
    { version = 2
    , jobs    = [
          keyJob "job1" ({ steps =  [ renderStep < Checkout = {=} | Run : RunStep >
                                    , renderStep < Checkout : {} | Run = ({ working_directory = "mydir", command = "mycommand" } : RunStep) >
                                    ]} : Job)
        ]
    } : Root
