# cpp-cloud-run

This sample doesn't work with GCP Cloud Run, although it workds on a local docker container.

# Docker

```
% docker build -t alpine:server .
% docker run --rm -it -p 8080:8080 --name my-server alpine:server
```
At http://localhost:8080/ , the server responds 200 as a status code and you can see "hello".

# GCP Cloud Run

```
gcloud builds submit --tag gcr.io/[PROJECT-ID]/server
gcloud beta run deploy --image gcr.io/[PROJECT-ID]/server --platform managed
```

Unfortunately, GCP Cloud Run responds 503.
