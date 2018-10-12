    let TopLevel    = ./TopLevel.dhall
in  let RunStep     = ./Step/RunStep.dhall

in  let job             = ./Job/job.dhall
in  let defaultJobSpec  = ./Job/defaultSpec.dhall

in  let checkoutStep    = ./Step/checkout.dhall
in  let defaultRunStep  = ./Step/defaultRun.dhall

in  let defaultContainer  = ./Docker/defaultContainer.dhall

in  let Step   = ./Step.dhall
in  let Env    = ./Env.dhall
in  let Auth   = ./Docker/Auth.dhall
in  let DockerContainer = ./DockerContainer.dhall


-- top level config --

in  let containers1 = [ defaultContainer "myimage1"
                      , defaultContainer "myimage2" // { auth = Some { username = "foo" , password = "bar" } }
                      ]

in  let job1 = job "job1" (defaultJobSpec // {
                  steps = [ checkoutStep
                          , defaultRunStep "mycommand" (\(x : RunStep) -> x // { working_directory = Some "mydir" })
                          ]
                , docker = Some containers1
                })

in
    { version = 2
    , jobs    = [ job1 ]
    } : TopLevel
