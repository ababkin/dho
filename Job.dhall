    let Step    = ./Step.dhall
in  let JobSpec = ./Job/Spec.dhall
in
{ mapKey : Text
, mapValue : JobSpec

}
