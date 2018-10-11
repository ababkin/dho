    let Job         = ./Job.dhall
in  let Root        = ./Root.dhall
in  let Step        = ./Step.dhall
in  let RunStep     = ./Step/RunStep.dhall


in  let renderJob     = ./Job/render.dhall
in  let renderStep    = ./Step/render.dhall
in  let checkoutStep  = ./Step/checkout.dhall
in  let runStep       = ./Step/run.dhall

in  let job1 = { steps =  [ renderStep checkoutStep
                          , renderStep (runStep "mydir" "mycommand")
                          ]} : Job
in
    { version = 2
    , jobs    = [
          renderJob "job1" job1
        ]
    } : Root
