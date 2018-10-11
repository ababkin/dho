{-
    docker:
      - image: circleci/golang:1.9
      - image: us.gcr.io/development/my-component:$CIRCLE_WORKFLOW_ID
        auth:
          username: _json_key
          password: $GCLOUD_SA_JSON
-}

    let Auth   = ./Docker/Auth.dhall
in
{ image : Text
, auth  : Optional Auth
}
