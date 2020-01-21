## How to build it
```
docker build -t medineshkatwal/gcr-retention:v1.0.0 .
```

## How to run it

### provision GCP IAM service account
`serviceaccount.json` is a json key of IAM service account called `gcr-retention-policy` that has these roles

```
Storage Object Admin
```

### run it

```
sudo docker run -it -e GCLOUD_SERVICE_KEY="service_account_key" \
    -e DELETE_DATE_BEFORE=2018-12-01 \ 
    -e REPOSITORY='repository_xxxx' \ 
    -e EXCLUDE='image1,image2,image3' \
     medineshkatwal/gcr-retention:v1.0.0
```
