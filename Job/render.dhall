    let Job         = ../Job.dhall
in  let RenderedJob = ./RenderedJob.dhall

in  let render  =
  \(key : Text) -> \(job : Job) -> ({ mapKey = key, mapValue = job } : RenderedJob)

in render
