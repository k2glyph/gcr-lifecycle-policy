## How to build it
```
docker build -t gcr-retention:0.0.1 .
```

## How to run it

### provision GCP IAM service account
`serviceaccount.json` is a json key of IAM service account called `gcr-retention-policy` that has these roles

```
Storage Object Admin
```

### run it

```
docker run -it -e GCLOUD_SERVICE_KEY="$(cat serviceaccount.json| base64)"  \
  -e DELETE_DATE_BEFORE=365 \
  -e REPOSITORY='eu.gcr.io/my-project' \
    gcr-retention:0.0.1
```