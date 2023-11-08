img_name_and_tag=$1
docker build -t ${img_name_and_tag} .
gcloud auth configure-docker us-central1-docker.pkg.dev
docker tag ${img_name_and_tag} us-central1-docker.pkg.dev/devconnect-final-project/batchen-artifacts/${img_name_and_tag}
docker push us-central1-docker.pkg.dev/devconnect-final-project/batchen-artifacts/${img_name_and_tag}