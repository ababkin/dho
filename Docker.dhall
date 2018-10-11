{-
    docker:
      - image: circleci/golang:1.9
      - image: us.gcr.io/development-148212/my-component:$CIRCLE_WORKFLOW_ID
        auth:
          username: _json_key
          password: $GCLOUD_SA_JSON
-}

{}
