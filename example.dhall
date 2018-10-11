    let Root        = ./Root.dhall
in  let RunStep     = ./Step/RunStep.dhall

in  let job             = ./Job/job.dhall
in  let defaultJobSpec  = ./Job/defaultSpec.dhall

in  let checkoutStep  = ./Step/checkout.dhall
in  let runStep       = ./Step/run.dhall

in  let Step   = ./Step.dhall
in  let Env    = ./Env.dhall
in  let Docker = ./Docker.dhall


in  let job1 = job "job1" (defaultJobSpec // {
                  steps = [ checkoutStep
                          , runStep "mydir" "mycommand"
                          ]
                })

in
    { version = 2
    , jobs    = [ job1 ]
    } : Root
