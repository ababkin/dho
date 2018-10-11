    let Job         = ./Job.dhall
in  let Root        = ./Root.dhall
in  let Step        = ./Step.dhall
in  let RunStep     = ./Step/RunStep.dhall


in  let job     = ./Job/job.dhall
in  let checkoutStep  = ./Step/checkout.dhall
in  let runStep       = ./Step/run.dhall

in  let job1 = job "job1" [ checkoutStep
                          , runStep "mydir" "mycommand"
                          ]
in
    { version = 2
    , jobs    = [ job1 ]
    } : Root
